Imports System.Data.SqlClient

Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'todo: add validation for password complexity, and match
        'todo: add logon modal/popup/redirect
        If Not Request("LogonEmail") Is Nothing Then LogonUser()
        If Not Request("Password1") Is Nothing Then Register()
    End Sub


    Private Sub LogonUser()
        If Request("LogonEmail").ToString <> "" And Request("LogonPassword").ToString <> "" Then
            If ValidateUser(Request("LogonEmail").ToString, Request("LogonPassword").ToString) Then
                FormsAuthentication.SetAuthCookie(Request("LogonEmail").ToString, CBool(Request("Persist")))
                Response.Redirect("peach/default.aspx")
            Else
                Response.Redirect("default.aspx", True)
            End If
        End If
    End Sub

    Private Function ValidateUser(ByVal userName As String, ByVal passWord As String) As Boolean
        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim lookupPassword As String

        lookupPassword = Nothing

        ' Check for an invalid userName.
        ' userName  must not be set to nothing and must be between one and 15 characters.
        If ((userName Is Nothing)) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.")
            Return False
        End If
        If (userName.Length = 0) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.")
            Return False
        End If

        ' Check for invalid passWord.
        ' passWord must not be set to nothing and must be between one and 25 characters.
        If (passWord Is Nothing) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.")
            Return False
        End If
        If ((passWord.Length = 0) Or (passWord.Length > 25)) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.")
            Return False
        End If

        Try
            ' Consult with your SQL Server administrator for an appropriate connection
            ' string to use to connect to your local SQL Server.
            conn = New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("DB").ConnectionString.ToString)
            conn.Open()

            ' Create SqlCommand to select pwd field from the users table given a supplied userName.
            cmd = New SqlCommand("Select passwordHash from users where email=@userName", conn)
            cmd.Parameters.Add("@userName", SqlDbType.VarChar, 25)
            cmd.Parameters("@userName").Value = userName


            ' Execute command and fetch pwd field into lookupPassword string.
            lookupPassword = cmd.ExecuteScalar().ToString

            ' Cleanup command and connection objects.
            cmd.Dispose()
            conn.Dispose()
        Catch ex As Exception
            ' Add error handling here for debugging.
            ' This error message should not be sent back to the caller.
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " & ex.Message)
        End Try

        ' If no password found, return false.
        If (lookupPassword Is Nothing) Then
            ' You could write failed login attempts here to the event log for additional security.
            Return False
        End If

        ' Compare lookupPassword and input passWord by using a case-sensitive comparison.
        Return (String.Compare(lookupPassword, passWord, False) = 0)

    End Function

    Private Sub Register()
        Dim OkToSave As Boolean = False
        If Not Request("Password1") Is Nothing Then
            If Not Request("Password2") Is Nothing Then
                If Request("Password1") = Request("Password2") Then
                    'todo: check password complexity
                    If Not Request("Email") Is Nothing Then
                        If Not Request("Gender") Is Nothing Then
                            If Not Request("DOB") Is Nothing Then
                                Using conn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("DB").ConnectionString.ToString),
                   cmd As New SqlCommand("CheckUnique", conn)
                                    cmd.CommandType = Data.CommandType.StoredProcedure
                                    cmd.Parameters.AddWithValue("@Email", Request("Email").ToString)
                                    Try
                                        conn.Open()
                                        Using reader As SqlDataReader = cmd.ExecuteReader()
                                            If reader.HasRows Then
                                                reader.Read()
                                                If CInt(reader("CNT")) = 0 Then
                                                    OkToSave = True
                                                Else
                                                    ResultBox.Attributes.Add("class", "bg-danger text-danger")
                                                    ResultBox.InnerHtml = "Email address already in use. Please try again."
                                                End If
                                            End If
                                        End Using
                                    Catch ex As Exception
                                    End Try
                                End Using
                            Else
                                ResultBox.Attributes.Add("class", "bg-danger text-danger")
                                ResultBox.InnerHtml = "Date of Birth not specified. Please try again."
                            End If
                        Else
                            ResultBox.Attributes.Add("class", "bg-danger text-danger")
                            ResultBox.InnerHtml = "Gender not specified. Please try again."
                        End If
                    Else
                        ResultBox.Attributes.Add("class", "bg-danger text-danger")
                        ResultBox.InnerHtml = "Email address not specified. Please try again."
                    End If
                Else
                    ResultBox.Attributes.Add("class", "bg-danger text-danger")
                    ResultBox.InnerHtml = "Passwords do not match. Please try again."
                End If
            Else
                ResultBox.Attributes.Add("class", "bg-danger text-danger")
                ResultBox.InnerHtml = "Password Repeat not specified. Please try again."
            End If
        Else
            ResultBox.Attributes.Add("class", "bg-danger text-danger")
            ResultBox.InnerHtml = "Password not specified. Please try again."
        End If
        'todo: add better CSS/Styling to error dialog/popup
        If OkToSave Then
            Using conn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("DB").ConnectionString.ToString),
                   cmd As New SqlCommand("RegisterUser", conn)
                cmd.CommandType = Data.CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Email", Request("Email").ToString)
                cmd.Parameters.AddWithValue("@PasswordHash", Request("Password1").ToString)
                cmd.Parameters.AddWithValue("@Gender", Request("Gender"))
                cmd.Parameters.AddWithValue("@DOB", CDate(Request("DOB").ToString))

                Try
                    conn.Open()
                    cmd.ExecuteNonQuery()
                Catch ex As Exception
                End Try
                FormsAuthentication.SetAuthCookie(Request("Email").ToString, False)
                Response.Redirect("peach/default.aspx")
            End Using
        End If
    End Sub
End Class
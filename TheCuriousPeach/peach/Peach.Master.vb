Imports System.Data.SqlClient

Public Class Site2
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Sub UpdateUser(Username As String)
        Useremail.InnerText = Username
        UserDetail2.InnerText = Username

        If IsNothing(Session("ID")) Then
            Using conn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("DB").ConnectionString.ToString),
   cmd As New SqlCommand("UserLogonAndCreateSession", conn)
                cmd.CommandType = Data.CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@Email", Username)
                Try
                    conn.Open()
                    Using reader As SqlDataReader = cmd.ExecuteReader()
                        If reader.HasRows Then
                            reader.Read()
                            Session.Clear()
                            Session("ID") = CInt(reader("ID"))
                            Session("DOB") = CDate(reader("DOB"))
                            Session("Gender") = CChar(reader("Gender"))
                        End If
                    End Using
                Catch ex As Exception
                End Try
            End Using
        End If
    End Sub

End Class
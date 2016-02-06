Imports System.Data.SqlClient

Public Class _default1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim aMP As Site2 = CType(Me.Master, Site2)
        aMP.UpdateUser(User.Identity.Name)

        Dim OCount As Long = 0
        Dim SexCount As Long = 0
        Dim MastCount As Long = 0
        Dim AveragePerPerson As Decimal = CDec(0.0)

        Using conn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("DB").ConnectionString.ToString),
                   cmd As New SqlCommand("OrgasmCountForUser", conn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@userID", CInt(Session("ID")))
            Try
                conn.Open()
                Using reader As SqlDataReader = cmd.ExecuteReader()
                    If reader.HasRows Then
                        reader.Read()
                        OCount = CInt(reader("OrgasmCount"))
                        MastCount = CInt(reader("MastCount"))
                        SexCount = CInt(reader("SexCount"))
                        AveragePerPerson = CDec(CInt(reader("TotalOrgasms")) / CInt(reader("NumUsers")))
                    End If
                End Using
            Catch ex As Exception
            End Try
        End Using


        If OCount > 0 Then
            WelcomeBox.Visible = False
        End If

        TotalOCount.InnerText = OCount.ToString
        AvgO.InnerText = AveragePerPerson.ToString
        MastCountSpan.InnerText = MastCount.ToString
        SexCountSpan.InnerText = SexCount.ToString

        If Not IsNothing(Request("Logoff")) Then
            If Request("Logoff") = "1" Then
                Common.LogActivity(CInt(Session("ID")), "Log off")
                FormsAuthentication.SignOut()
                Response.Redirect("/default.aspx")
            End If
        End If
    End Sub

End Class
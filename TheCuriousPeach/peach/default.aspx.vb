Public Class _default1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim aMP As Site2 = CType(Me.Master, Site2)
        aMP.UpdateUser(User.Identity.Name)

        If Not IsNothing(Request("Logoff")) Then
            If Request("Logoff") = "1" Then
                FormsAuthentication.SignOut()
                Response.Redirect("/default.aspx")
            End If
        End If
    End Sub

End Class
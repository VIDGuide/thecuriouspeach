

Public Class Site2
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Sub UpdateUser(Username As String)
        Useremail.InnerText = Username
        UserDetail2.InnerText = Username
    End Sub

End Class
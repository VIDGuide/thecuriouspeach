Imports System.Data.SqlClient

Friend Class Common
    Public Shared Sub LogActivity(UserID As Integer, Activity As String)
        Using conn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("DB").ConnectionString.ToString),
                   cmd As New SqlCommand("LogActivity", conn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@UserID", UserID)
            cmd.Parameters.AddWithValue("@Action", Activity)
            Try
                conn.Open()
                cmd.ExecuteNonQuery()
            Catch ex As Exception
            End Try
        End Using
    End Sub
End Class

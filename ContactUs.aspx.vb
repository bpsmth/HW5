Imports System.Net.Mail.MailMessage
Imports System.Net.Mail

Partial Class ContactUs
    Inherits System.Web.UI.Page


    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        Dim objMail As New MailMessage()
        Dim mSmtpClient As New SmtpClient()

        objMail.To.Add(New MailAddress("test@test.com"))
        objMail.From = New MailAddress(TBEmail.Text)
        objMail.Body = TBEmail.Text.ToString()


        mSmtpClient.Send(objMail)








    End Sub
End Class

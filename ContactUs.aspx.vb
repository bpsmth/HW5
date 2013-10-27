Imports System.Net.Mail.MailMessage
Imports System.Net.Mail
Imports System.Net

Partial Class ContactUs
    Inherits System.Web.UI.Page


    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        Dim objMail As New MailMessage
        Dim client As New SmtpClient()

        objMail.To.Add(New MailAddress("test@test.com"))
        objMail.From = New MailAddress(TBEmail.Text)
        objMail.Subject = "Contact Us Response"
        objMail.Body = TBMessage.Text.ToString()


        client.Host = "smtp.gmail.com"  'place your smtp server inside quotation marks - gmail is smtp.gmail.com
        client.Port = 587  'place your smtp port here - gmail is 587
        client.Credentials = New NetworkCredential("ui.6k183", "6k183U*I")  'enter you username and password for gmail
        client.EnableSsl = True  'gmail uses ssl
        client.Send(objMail)  'send you msg (variable from above)

        TBEmail.Text = ""
        TBMessage.Text = ""

        confirmationLbl.Text = "Thank you for your response!"







    End Sub



End Class

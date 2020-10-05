$Username      = $args[0]
$EmailPassword = $args[1]

$Username = $Username
$EmailTo = "sant.s.john@gmail.com" 
$EmailFrom = "sant.s.john@gmail.com"
$Subject = "Email Subject"
$Body = "Email Body"
$SMTPServer = "smtp.gmail.com" 
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom, $EmailTo, $Subject, $Body)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($Username, $EmailPassword); 
$SMTPClient.Send($SMTPMessage)

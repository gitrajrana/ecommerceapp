<?php
$to= "info@kalamandirorissa.com";
$subject = "feedback_form";

$body = "First Name: ";
$body .= stripslashes($_POST['firstname']);
$body .= "\nLast Name: ";
$body .= stripslashes($_POST['lastname']);
$body .= "\nGender: ";
$body .= stripslashes($_POST['rdogndr']);
$body .= "\nEmail: ";
$body .= stripslashes($_POST['email']);
$body .= "\nOccupation: ";
$body .= stripslashes($_POST['occupation']);
$body .= "\nAddress: ";
$body .= stripslashes($_POST['address']);
$body .= "\nCity: ";
$body .= stripslashes($_POST['city']);
$body .= "\nProvince/State: ";
$body .= stripslashes($_POST['provience/state']);
$body .= "\nZIP/Postal Code: ";
$body .= stripslashes($_POST['zip']);
$body .= "\nPhone: ";
$body .= stripslashes($_POST['phone']);
$body .= "\nFax: ";
$body .= stripslashes($_POST['fax']);
$body .= "\nCustomer feedback / suggestion: ";
$body .= stripslashes($_POST['subject']);

$redirect= "index.html";

$from = stripslashes($_POST['email']);
$headers1 =  "From: $from\n";
$headers1 .= "Content-type: text/html;charset=iso-8859-1\r\n"; 
$headers1 .= "X-Priority: 1\r\n"; 
$headers1 .= "X-MSMail-Priority: High\r\n"; 
$headers1 .= "X-Mailer: Just My Server\r\n";

?>
<?php
if (mail($to,$subject,$body,$from))
header("Location: $redirect");

else
echo "Sorry, Mail unable to sent.";
?>
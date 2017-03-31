<html>
<head>
<title>Payment Submitted</title>
<link rel="stylesheet" type="text/css" href="../styles/forms.css">
</head>
<BODY>
<!--User passes in order number in param named <oNum> -->
<!--and requested action in <action> -->
<h1>Payment Submitted</h1>

 %invoke UseCases.ProcessShoppingOrder.Utils:pushPaymentInfo%
 <p>
   <span style="padding-left:2em">Order Number:</span>    <span style="padding-left:38px">%value /OrderNumber%</span><br>
   <span style="padding-left:2em">Invoice Number:</span>  <span style="padding-left:28px">%value /InvoiceNumber%</span><br>
   <span style="padding-left:2em">Customer Name:</span>   <span style="padding-left:30px">%value /CustomerName%</span><br>
   <span style="padding-left:2em">Card Number:</span>     <span style="padding-left:44px">%value /CardNumber%</span><br>
   <span style="padding-left:2em">Expiration Date:</span> <span style="padding-left:30px">%value /ExpirationDate%</span><br>
   <span style="padding-left:2em">Amount:</span>          <span style="padding-left:78px">%value /Amount%</span>
   <br>
 </p>
   <span style="padding-left:2em">%value ResultMessage%</span>  
 %endinvoke%

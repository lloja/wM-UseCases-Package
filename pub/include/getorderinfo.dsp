<html>
<head>
<title>Order Tracking System</title>
<link rel="stylesheet" type="text/css" href="../styles/forms.css">
</head>
<BODY>
<!--User passes in order number in param named <oNum> -->
<!--and requested action in <action> -->
  <h1>Order Submitted</h1>
  <hr>
  %switch action%
  %case 'pushorderinfo'%
  %invoke UseCases.ProcessShoppingOrder.Utils:pushOrderInfo%
    <p>
      <span style="padding-left:2em">Customer Name:</span> <span style="padding-left:12px">%value /RecipientName%</span><br>
      <span style="padding-left:2em">Email Address:</span> <span style="padding-left:22px">%value /EmailAddress%</span><br>
      <span style="padding-left:2em">Address:</span>       <span style="padding-left:65px">%value /Address%</span><br>
      <span style="padding-left:2em">City:</span>          <span style="padding-left:89px">%value /City%</span><br>
      <span style="padding-left:2em">Post Code:</span>     <span style="padding-left:52px">%value /PostCode%</span><br>
      <span style="padding-left:2em">Country:</span>       <span style="padding-left:64px">%value /Country%</span><br>
    </p>
  %endinvoke%
  %case 'orderinfo'%
    %invoke UseCases.ProcessShoppingOrder.Utils:getOrderInfo%
  %endinvoke%
  <hr>
</BODY>

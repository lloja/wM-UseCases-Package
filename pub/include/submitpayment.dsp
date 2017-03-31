<html>

<head>
    <title>Payment Entry</title>
    <link rel="stylesheet" type="text/css" href="../styles/forms.css">
</head>

<body>
    <h1>Payment Information</h1>
    <hr>
    <form action="/UseCases/include/paymentinfo.dsp" method="GET">
      <p>
          <label>Order Number:</label>
          <input TYPE="TEXT" NAME="OrderNumber">
      </p>
      <br>
      <p>
          <label>Invoice Number:</label>
          <input TYPE="TEXT" NAME="InvoiceNumber">
      </p>
      <br>
      <p>
          <label>Customer Name:</label>
          <input TYPE="TEXT" NAME="CustomerName">
      </p>
      <br>
      <p>
          <label>Card Number:</label>
          <input TYPE="TEXT" NAME="CardNumber">
      </p>
      <br>
      <p>
          <label>Expiration Date:</label>
          <input TYPE="TEXT" NAME="ExpirationDate">
      </p>
      <br>
      <p>
          <label>Amount:</label>
          <input TYPE="TEXT" NAME="Amount">
      </p>
      <br>
      <p>
          <input type="submit" VALUE="Submit">
      </p>
      <br>
      <br>
    </form>
  <hr>
</body>

<HTML>
<!-- For details on the tags contained in the code below, reference
the B2BTemplatesAndDSPs.pdf located in the B2BIntegrator4\doc directory -->
<HEAD>
<TITLE>List Orders</TITLE>
<link rel="stylesheet" type="text/css" href="../styles/forms.css">
</HEAD>

	<!-- Standard tag to invoke an IS Service "invoke folderName:serviceName" -->
	%invoke UseCases.ProcessShoppingOrder.Utils:selectOrders%

		<!-- Check to see if the number of orders is greater than or equal to 0. -->
		%ifvar selectOrderOutput/NumberOfOrders equals('0')%
			<TABLE WIDTH="100%">
				<TR>
					<TD>No recorded orders</font></TD>
				</TR>
			</TABLE>

		%else%
			<h1>Order List</h1>
			<hr>

			<TABLE WIDTH="100%" class="coldata" width="100%" cellpadding=2 cellspacing=1 border=0 bgcolor=#dcdcdc>

				<TR align="left" valign="bottom" bgcolor=#a0b8c8>
					<TH>Order Id</TH>
					<TH>Recipient Name</TH>
					<TH>Email Address</TH>
					<TH>Address Address</TH>
					<TH>City</TH>
					<TH>Post Code</TH>
					<TH>Country</TH>
					<TH>Received Order</TH>
					<TH>Fill Order</TH>
					<TH>Send Invoice</TH>
					<TH>Ship Order</TH>
					<TH>Accept Payment</TH>
					<TH>Close Order</TH>
					<TH>Order Reject Reason</TH>
					<TH>Total Cost</TH>
					<TH>Receive Date</TH>
					<TH>Delivery Date</TH>
				</TR>

				<!-- loop is only valid when the variable is an array (record list,
				string list, object list, etc -->
				%loop selectOrderOutput/results%
					<TR valign="top" bgcolor=#eeeeee>
						<!-- Standard way to display a value, "value variableName" -->
						<TD><A HREF="orderdetails.dsp?orderId=%value ID%">%value ID%</TD>
						<TD>%value RECIPIENTNAME%</TD>
						<TD>%value EMAILADDRESS%</TD>
						<TD>%value ADDRESS%</TD>
						<TD>%value CITY%</TD>
						<TD>%value POSTCODE%</TD>
						<TD>%value COUNTRY%</TD>
						<TD>&#%value RECEIVEORDER%</TD>
						<TD>&#%value FILLORDER%</TD>
						<TD>&#%value SENDINVOICE%</TD>
						<TD>&#%value SHIPORDER%</TD>
						<TD>&#%value ACCEPTPAYMENT%</TD>
						<TD>&#%value CLOSEORDER%</TD>
						<TD>%value ORDERREJECTREASON%</TD>
						<TD>%value TOTALCOST%</TD>
						<TD>%value RECEIVEDATE%</TD>
						<TD>%value DELIVERYDATE%</TD>
					</TR>

				<!-- Don't forget to end the loop -->
				%endloop%

			</TABLE>

			<TABLE WIDTH="100%">
				<TR>
					<TD><BR>%value selectOrderOutput/NumberOfOrders% Orders Found</BR></TD>
				</TR>
			</TABLE>

		<!-- Don't forget to end the if statement! -->
		%endif%

	<!-- Don't forget to end the invoke! -->
	%endinvoke%
<hr>
</BODY>
</HTML>

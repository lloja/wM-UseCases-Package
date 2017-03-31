<HTML>
<!-- For details on the tags contained in the code below, reference
the B2BTemplatesAndDSPs.pdf located in the B2BIntegrator4\doc directory -->
<HEAD>
<TITLE>Order Details</TITLE>
<link rel="stylesheet" type="text/css" href="../styles/forms.css">
</HEAD>

	<!-- Standard tag to invoke a B2B Service "invoke folderName:serviceName" -->
	%invoke UseCases.ProcessShoppingOrder.Utils:selectOrderDetails%

		<!-- scope is used to limit the data available to the logic between
		the scope and endscope.  This is mainly done for readability and
		performance -->
		%scope Order%

		<h1>Order Detail</h1>
		<hr>

			<TABLE WIDTH="100%">
				<TR>
					<TD>Order Number: %value ID%</TD>
				</TR>
				<TR>
					<TD>Customer Name: %value RECIPIENTNAME%</TD>
				</TR>
				<TR>
				</TR>
				<TR>
					<TD>Order Receive Date: %value RECEIVEDATE%</TD>
				</TR>
				<TR>
					<TD>Order Delivery Date: %value DELIVERYDATE%</TD>
				</TR>
			</TABLE>

			<BR></BR>

			<TABLE class="coldata" width="100%" cellpadding=2 cellspacing=1 border=0 bgcolor=#dcdcdc>

				<TR align="left" valign="bottom" bgcolor=#a0b8c8>
					<TH>Product Id</TH>
					<TH>Product Name</TH>
					<TH>Product Description</TH>
					<TH>Quantity</TH>
					<TH>Unit Price</TH>
				</TR>

				%loop Items%
					<TR valign="top" bgcolor=#eeeeee>
						<TD>%value ITEMID%</A></TD>
						<TD>%value ITEMNAME%</TD>
						<TD>%value ITEMDESCRIPTION%</TD>
						<TD>%value QUANTITY%</TD>
						<TD>%value PRICE%</TD>
					</TR>

				<!-- Don't forget to end the loop -->
				%endloop%

			</TABLE>

			<TABLE WIDTH="100%">
				<TR>
					<TD><BR>%value NUMBERITEMS% Items Number Found</BR></TD>
				</TR>
			</TABLE>
		<!-- Don't forget to end the scope -->
		%endscope%

	<!-- Don't forget to end the invoke! -->
	%endinvoke%
<hr>
</BODY>
</HTML>

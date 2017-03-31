<HTML>
<!-- For details on the tags contained in the code below, reference
the B2BTemplatesAndDSPs.pdf located in the B2BIntegrator4\doc directory -->
<HEAD>
<TITLE>Catalogue</TITLE>
<link rel="stylesheet" type="text/css" href="../styles/forms.css">
</HEAD>

	<!-- Standard tag to invoke an IS Service "invoke folderName:serviceName" -->
	%invoke UseCases.ProcessShoppingOrder.AdapterServices:selectCatalog%

		<!-- Check to see if the number of orders is greater than or equal to 0. -->
		%ifvar selectCatalogOutput/NumberOfItems equals('0')%
			<TABLE WIDTH="100%">
				<TR>
					<TD>Empty catalogue</TD>
				</TR>
			</TABLE>

		%else%
			<h1>Product Catalogue</h1>
			<hr>

			<TABLE WIDTH="100%" class="coldata" width="100%" cellpadding=2 cellspacing=1 border=0 bgcolor=#dcdcdc>

				<TR align="left" valign="bottom" bgcolor=#a0b8c8>
					<TH>Item Identification</TH>
					<TH>Product Name</TH>
					<TH>Product Description</TH>
					<TH>Unit Price</TH>
				</TR>

				<!-- loop is only valid when the variable is an array (record list,
				string list, object list, etc -->
				%loop selectCatalogOutput/results%
					<TR valign="top" bgcolor=#eeeeee>
						<!-- Standard way to display a value, "value variableName" -->
						<TD>%value ID%</TD>
						<TD>%value PRODUCT%</TD>
						<TD>%value DESCRIPTION%</TD>
						<TD>%value UNITPRICE%</TD>
					</TR>

				<!-- Don't forget to end the loop -->
				%endloop%

			</TABLE>

			<TABLE WIDTH="100%">
				<TR>
					<TD><BR>%value selectCatalogOutput/NumberOfItems% Products Found</BR></TD>
				</TR>
			</TABLE>

			<hr>
		<!-- Don't forget to end the if statement! -->
		%endif%

	<!-- Don't forget to end the invoke! -->
	%endinvoke%

</BODY>
</HTML>

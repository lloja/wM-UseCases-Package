Uses Cases Integration Scenarios

Requirements

webMethods Integration Server 9.12 or higher
webMethods Universal Messaging 9.12 or higher
webMethods Designer 9.12 or higher
Oracle Database 12 or higher
hMailServer 5.6.5 or higher
Thunderbird 45.6.0 or higher


Installation

Install the UseCases package by dropping its zip file inside the directory "<Installation Directory>\IntegrationServer\instances\default\replicate\inbound".
Upload the package into the Integration Server and by using the "Install Inboud Releases" option. 
Use the Integration Server administration console to find this option inside the "Packages" and "Management" sub-menus.
Configure the JDBC adapter connection "Connections:Oracle" with the new Oracle database connection settings.

Run all the SQL script files from "<Installation Directory>\IntegrationServer\instances\default\packages\UseCases\doc\sql" and against the new Oracle SQL schema.

Configure hMailServer and create the mail domain "sag.com". Set and create in the same domain the user profile "lloja@sag.com" with password "manage".

Configure Thunderbird with the user account "lloja@sag.com". Notice that all servers listed in this file should run in the same environment.
Changes should be done to configuration and code so to reflect the changes to the email address, to the mail domain name or if the servers are located in different environments. 
   
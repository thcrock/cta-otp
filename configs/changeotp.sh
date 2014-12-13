#!/bin/bash

# Update the Tomcat Server with otp changes
# Must be run as root

# Stop the server
service tomcat7 stop

# Remove old wars/folders
rm /var/lib/tomcat7/webapps/opentripplanner-analyst-client.war
rm /var/lib/tomcat7/webapps/opentripplanner-api-webapp.war
rm /var/lib/tomcat7/webapps/opentripplanner-ga-client.war
rm /var/lib/tomcat7/webapps/opentripplanner-webapp.war
rm -r -f /var/lib/tomcat7/webapps/opentripplanner-analyst-client
rm -r -f /var/lib/tomcat7/webapps/opentripplanner-api-webapp
rm -r -f /var/lib/tomcat7/webapps/opentripplanner-ga-client
rm -r -f /var/lib/tomcat7/webapps/opentripplanner-webapp

#Add new wars/folders
cp ../opentripplanner-analyst-client/target/opentripplanner-analyst-client.war /var/lib/tomcat7/webapps
cp ../opentripplanner-api-webapp/target/opentripplanner-api-webapp.war /var/lib/tomcat7/webapps
cp ../opentripplanner-ga-client/target/opentripplanner-ga-client.war /var/lib/tomcat7/webapps
cp ../opentripplanner-webapp/target/opentripplanner-webapp.war /var/lib/tomcat7/webapps 

# Start the server again
service tomcat7 start

# Exit
exit

# Use the official Tomcat image
FROM tomcat:9.0

# List the files in the target directory (for debugging purposes)
RUN ls -l /var/lib/jenkins/workspace/maven_deploy1/target/

# Copy the .war file from the target directory to Tomcat's webapps directory
COPY target/*.war /usr/local/tomcat/webapps/

# Expose port 8080 for Tomcat
EXPOSE 8080

# Use the latest Tomcat image
FROM tomcat:latest

# Ensure webapps folder is populated (for fresh deployments)
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

# Copy the WAR file into Tomcat’s webapps directory
COPY *.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

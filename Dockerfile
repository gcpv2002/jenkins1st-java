# Use official Tomcat base image
FROM tomcat:9-jdk11

# Remove default apps (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat webapps directory
COPY target/webappExample.war /usr/local/tomcat/webapps/ROOT.war

# Expose port for container
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
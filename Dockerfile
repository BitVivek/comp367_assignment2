# Use the official Jetty image as the base image
FROM jetty:9.4-jre11

# Remove the default ROOT application
RUN rm -rf /var/lib/jetty/webapps/ROOT

# Copy your WAR file to the webapps directory as ROOT.war
COPY target/vivek-comp367-webapp.war /var/lib/jetty/webapps/ROOT.war

# Expose the port Jetty listens on
EXPOSE 8081
ENV JETTY_PORT=8081
# Start Jetty server (CMD is already set in the base image)


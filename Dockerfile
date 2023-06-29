FROM nexus.frankframework.org/frank-framework:7.8

RUN mkdir -p /opt/frank/configurations/NLXService
RUN mkdir -p /opt/frank/configurations/HelloWorld
RUN mkdir -p /opt/frank/resources
COPY --chown=tomcat NLXFrank/configurations/NLXService/Configuration.xml /opt/frank/configurations/NLXService/
COPY --chown=tomcat NLXFrank/configurations/HelloWorld/Configuration.xml /opt/frank/configurations/HelloWorld/
COPY --chown=tomcat resources/DeploymentSpecifics.properties /opt/frank/resources/
COPY --chown=tomcat resources/context.xml /usr/local/tomcat/conf/Catalina/localhost/ROOT.xml

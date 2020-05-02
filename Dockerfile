FROM diamol/jenkins 
COPY ./scripts/ ${JENKINS_HOME}/init.groovy.d/
# DOCKER HUB TOKEN 7cb63622-22bf-44d7-9bcc-10dc04422f76
FROM jenkins/jenkins 
USER root
RUN usermod -a -G daemon jenkins
USER jenkins
COPY ./scripts/ ${JENKINS_HOME}/init.groovy.d/

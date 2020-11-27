# FROM rougeo/jenkinscustom
FROM jenkins/jenkins:lts

USER root

VOLUME /var/jenkins_home
RUN mkdir -p /var/casc_config 
RUN chown jenkins:jenkins -R /var/jenkins_home /var/casc_config 

USER jenkins

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN xargs /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
COPY jenkins.yaml  /var/casc_config/jenkins.yaml
ENV CASC_JENKINS_CONFIG /var/casc_config/jenkins.yaml

# allows to skip Jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
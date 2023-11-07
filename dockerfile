FROM jenkins/jenkins:lts

# Skip initial setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

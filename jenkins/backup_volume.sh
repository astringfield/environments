# As user jenkins to backup volume "jenkins_home"
cd
mkdir jenkins_home_backup
docker run --rm -it -v jenkins_home:/jenkins_home -v /home/jenkins/jenkins_home_backup:/backup ubuntu tar cvjf /backup/jenkins_home.tar.bz2 /jenkins_home


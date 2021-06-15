API_JENKINS=1176390b4c04daa16337656e9c0cd9f041
curl -u jenkins:$API_JENKINS -X POST http://jenkins.local:8080/job/ENV/build?delay=0sec

curl -u jenkins:$API_JENKINS -X POST http://35.232.33.230:8080/job/db-ansible-users/buildWithParameters?EDAD=25

curl -u jenkins:$API_JENKINS -X POST  http://jenkins.local:8080/job/backup-db-to-aws/buildWithParameters?DB_HOST=db_host&DB_NAME=testdb&BUCKET_NAME=jenkins-udemy-francis

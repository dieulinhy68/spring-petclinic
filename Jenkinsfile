pipeline {
   agent any
   stages{
      stage('add git lab'){
         steps{
            git credentialsId: 'webhook-spring' , url: 'http://192.168.20.20/root/webhook-spring.git'
         }
      }
      stage('docker build'){
         steps{
            withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') 
            sh label: '', script: 'docker build -t dlinh/nodejs-task:v1 . '
            sh label: '', script: 'docker push dlinh/nodejs-task:v1 '
         }
      }
   }
}
pipeline {
   agent any
   stages{
      stage('docker build'){
         steps{
            withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') 
            sh label: '', script: 'docker build -t dlinh/nodejs-task:v1 . '
            sh label: '', script: 'docker push dlinh/nodejs-task:v1 '
         }
      }
   }
}
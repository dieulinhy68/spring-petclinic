pipeline {
    agent any
    stages {
        stage('Build Docker Image'){
            steps {
               script {
                  app = docker.build("dlinh/webapp")
                  app.inside {
                     sh 'echo $(curl localhost:9000)'
                  }
               }
            }
         }
      } 
   }
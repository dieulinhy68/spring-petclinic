pipeline {
   agent any
   environment {
      PROJECT = dlinh/webapp
   }
   stages {
      stage('Build Docker Image'){
         steps {
            script {
               sh 'echo start build...'
               env.COMMITHASH = sh(script:'git rev-parse --short=8 HEAD', returnStdout: true).trim()
               sh 'docker build -t $PROJECT:latest . '
               sh 'docker tag $(PROJECT):latest $(PROJECT):$COMMIT_HASH'
               sh 'echo build complete on `date` '
               sh 'docker push $PROJECT:$COMMIT_HASH'
            }
         }
      }
   }
}
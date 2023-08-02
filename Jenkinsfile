pipeline {
   agent any
   environment {
      PROJECT = "dlinh/webapp"
   }
   stages {
      stage('Pre Build') { 
      steps {
        script {
        sh 'echo Prebuild command'
        sh 'echo Logging in to Images Registry'
        sh "cat /opt/docker_token.txt | docker login --username dlinh --password-stdin"
        }
      }
    }
      stage('Build Docker Image'){
         steps {
            script {
               sh 'echo start build...'
               env.COMMIT_HASH = sh(script:'git rev-parse --short=8 HEAD', returnStdout: true).trim()
               sh 'docker build -t $PROJECT:latest . '
               sh 'docker tag ${PROJECT}:latest ${PROJECT}:$COMMIT_HASH'
               sh 'echo build complete on `date` '
               sh 'docker push ${PROJECT}:$COMMIT_HASH'
            }
         }
      }
   }
}
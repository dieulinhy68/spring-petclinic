pipeline {
    agent any
    environment {
        PROJECT = "dlinh"
    }
    stages {
        stage('Pre Build') {
            steps {
            script {
            sh 'echo 'Pre Building..''
            sh 'echo 'Loggin Registry..''
            sh "cat /opt/docker_token.txt | docker login --username dlinh --password-stdin "
                }
            }
        }
        stage('Test') {
            steps {
                script{                
                sh echo 'Start build..'
                env.COMMIT_HASH = sh(script:'git rev-parse --short=8 HEAD', returnStdout: true).trim()
                sh 'echo $COMMIT_HASH'
                sh 'echo docker build image..'
                sh ' docker build -i $PROJECT:latest .'
                sh 'docker tag $(PROJECT):latest $(PROJECT):$COMMIT_HASH'
                sh 'echo build completed on `date` '
                sh 'echo pushing docker image...'
                sh 'docker push $(PROJECT):$COMMIT_HASH'
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
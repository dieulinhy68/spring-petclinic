pipeline {
    agent {
        docker {
            image 'openjdk:22-slim-bookworm'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') { 
            steps {
                sh 'mvn test' 
            }
            post {
                always {
                    junit 'target/*.xml' 
                }
            }
        }
    }
}
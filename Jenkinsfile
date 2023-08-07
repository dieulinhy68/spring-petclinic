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
                echo 'Notify build maven'
                sh './mvnw package'
            }
        }
        stage('SonarQube analysis') {
            steps {
                echo 'Notify SonarQube analysis'
                
            }
        }
    }
}

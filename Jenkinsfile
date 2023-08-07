pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                withSonarQubeEnv(installationName: 'SonarQube Server') { 
                sh './mvnw org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar'
            }
        }
        // stage('SonarQube analysis') {
        //     steps {
        //         echo 'Notify SonarQube analysis'
        //         sh 'mvn clean verify sonar:sonar \
        //             -Dsonar.projectKey=jenkins-sonar-0808 \
        //             -Dsonar.projectName='jenkins-sonar-0808' \
        //             -Dsonar.host.url=http://192.168.20.12:9000 \
        //             -Dsonar.token=sqp_80095923ebfc18d05d291368cd181b7cfb7f2a84'    
        //     }
        // }
    }
}
}
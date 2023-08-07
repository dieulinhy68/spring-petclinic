pipeline {
    agent any
    stages {
        stage('build the code') {
        steps {
            sh 'mvn clean package'
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
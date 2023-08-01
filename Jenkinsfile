// pipeline {
//     agent any
//     stages {
//         stage('Pre Build') {
//             steps {
//             git credentialsId: 'webhook-spring' , url: 'http://192.168.20.20/root/webhook-spring.git'
//                 }
//             }   
//         stage('Build') {
//             steps {
//             withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') 
//                 sh label: '', scrpit: 'docker build -t dlinh/nodejs-test:v1.1 .'
//                 sh label: '', scrpit: 'docker push dlinh/nodejs-test:v1.1'
//             }
//         }
//     }
// }
pipeline {
    agent any
    stages {
       stage('gitlab') {
          steps {
             echo 'Notify GitLab'
             updateGitlabCommitStatus name: 'build', state: 'pending'
             updateGitlabCommitStatus name: 'build', state: 'success'
          }
       }
    }
}
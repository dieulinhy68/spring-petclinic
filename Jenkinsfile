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
             sh 'echo helloworld'
          }
       }
    }
}

///Secret token-jenkins-gitlab-test0208-00e7a282f38a01899f5a5e8018bf2f75
//token in jenkins gitlab-jenkins-token 11775aa7c85cf24f9cd6e93fa092d8dfd7
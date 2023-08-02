pipeline {
    agent any
    stages {
       stage('gitlab') {
          steps {
             sh 'echo Notify GitLab'
             updateGitlabCommitStatus name: 'build', state: 'pending'
             updateGitlabCommitStatus name: 'build', state: 'success'
          }
       }
    }
}
pipeline {
    agent {
        docker { image 'node:16.13.1-alpine' }
    }
    stages {
        stage('Fetch code') {
            steps {
                git branch: 'vp-rem', url:'https://github.com/OpeyemiAdeniji/DevOps-Lifecycle.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn install -DskipTests'
            }

            post{
                success{
                    echo 'Now Archiving it...'
                    archiveArtifacts artifacts: */target/.war'
                }
            }
        }
    }
}
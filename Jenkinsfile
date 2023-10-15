pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git 'https://github.com/orewa-snk01/rds_php.git'
            }
        }
        
        stage('docker push') {
            steps {
                script{
                    withDockerRegistry(credentialsId: 'docker-1', toolName: 'docker') {
                        sh "docker build -t naveen ."
                        sh "docker run -d -p 9000:80 naveen"
                    }
                }
                
            }
        }
        
        
    }
}

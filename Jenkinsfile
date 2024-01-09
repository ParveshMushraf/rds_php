pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git 'https://github.com/ParveshMushraf/rds_php.git'
            }
        }
        
        stage('docker push') {
            steps {
                script{
                    withDockerRegistry(credentialsId: 'dock-cred', toolName: 'docker') {
                    
                        sh "docker build -t muji ."
                        sh "docker run -d -p 9000:80 muji"
                    }
                }
                
            }
        }
        
        
    }
}

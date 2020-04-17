pipeline {
    agent any
    stages {
        stage('Verify') {
            steps {
                sh '''
                    docker version
                    docker-compose version
                '''
            }
        }
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run java-demo:1.0'
            }
        }
        stage('Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerHub', usernameVariable: 'DOCKERHUB_USER', passwordVariable: 'DOCKERHUB_TOKEN')]) {                      
                    sh '''
                        docker login -u $DOCKERHUB_USER -p $DOCKERHUB_TOKEN 
                        docker image tag java-demo:1.0 $DOCKERHUB_USER/java-demo:1.0
                        docker image push $DOCKERHUB_USER/java-demo:1.0
                    '''
                }
            }
        }
    }
}
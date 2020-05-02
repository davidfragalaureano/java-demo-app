pipeline {
    agent any
    environment {
        IMAGE_TEST = 'maven:3.5-jdk-8-alpine'
        APP_DIR = 'java-app'
    }
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
            agent {
                docker {
                    image '${IMAGE_TEST}' 
                } 
            }
            steps {
                sh 'cd ${APP_DIR}&& mvn test'
            }
        }
        stage('Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKERHUB_USER', passwordVariable: 'DOCKERHUB_TOKEN')]) {                      
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
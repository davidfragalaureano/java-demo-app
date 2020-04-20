pipeline {
    agent any
    environment {
        IMAGE_TEST = 'maven:3.5-jdk-8'
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
        /* To run this, we need to have a volum from the $JENKIS_HOME to the host.
        stage('Test') {
            agent {
            docker {
                image '${IMAGE_TEST}' 
                args '-v ${WORKSPACE}/${APP_DIR}/.m2:${WORKSPACE}/${APP_DIR/.m2}'
            }
            steps {
                 sh 'ls'
                 sh 'mvn test'
            }
        }
        */
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
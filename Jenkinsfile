pipeline {
    agent any

    environment {
        DOCKER_HOST = 'tcp://localhost:2375'
        DOCKERHUB_CREDENTIALS = credentials('docker-hub-credentials')
        DOCKERHUB_USERNAME = "${DOCKERHUB_CREDENTIALS_USR}"
        DOCKERHUB_PASSWORD = "${DOCKERHUB_CREDENTIALS_PSW}"
        IMAGE_NAME = 'vivekcente/vivek-comp367-webapp'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/BitVivek/comp367_assignment2.git'
            }
        }
        stage('Docker Build') {
            steps {
                echo "Building Docker image..."
                sh "docker build -t ${IMAGE_NAME}:latest ."
            }
        }
        stage('Docker Login') {
            steps {
                echo "Logging in to Docker Hub..."
                sh "echo ${DOCKERHUB_CREDENTIALS_PSW} | docker login -u ${DOCKERHUB_CREDENTIALS_USR} --password-stdin"
            }
        }
        stage('Docker Push') {
            steps {
                echo "Pushing Docker image to Docker Hub..."
                sh "docker push ${IMAGE_NAME}:latest"
            }
        }
    }
}

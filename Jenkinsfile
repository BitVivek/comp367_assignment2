pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/BitVivek/comp367_assignment2.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying the web app..."
            }
        }
    }
}

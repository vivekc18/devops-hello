pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/vivekc18/devops-hello.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-hello .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 --name hello-app devops-hello || true'
            }
        }
    }
}

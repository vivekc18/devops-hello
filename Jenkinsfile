pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/vivekc18/devops-hello.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building the application..."
                sh 'echo Build successful!'
            }
        }

        stage('Docker Build') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t devops-hello .'
            }
        }

        stage('Docker Run') {
            steps {
                echo "Running Docker container..."
                // Stop container if already running
                sh 'docker rm -f devops-hello-container || true'
                sh 'docker run -d --name devops-hello-container -p 5000:5000 devops-hello'
            }
        }
    }
}

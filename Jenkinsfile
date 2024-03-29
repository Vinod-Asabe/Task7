pipeline {
    agent any
    stages {
	stage('Checkout'){
		steps{
			script{
				git branch: 'main', url: 'https://github.com/Vinod-Asabe/Task7.git'
			}
		}
	}
        stage('Test') {
            steps {
                script {
                    // Check if Docker is available
                    bat 'docker info'
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    // Build the Docker image from a Java file
                    bat 'docker build -t my-java-app .'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    	// Run a container using the Docker image
                   	bat 'docker run -d --name my-java-container my-java-app'
                    	// Fetch the output of the java File
			bat 'docker logs my-java-container'
                }
            }
        }
    }
}

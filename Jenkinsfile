pipeline {
    agent any
    environment {
        NEW_VERSION = '1.3.0'

    } 
    stages {
        stage('Build') {
            steps {
                echo 'Building the application'
                echo "Building version ${NEW_VERSION}
            }
        }
        stage('Test') {
            steps {
                echo 'Testing the application'
            }
        }
        stage("Deploy") {
            steps {
                echo 'Deploying the application'
            }
        }
    }
}

pipeline {
 
   agent any

    stages {
        stage('Server Build') {
            steps {
                sh 'echo "Building Server Container..."'
            }
        }
        stage('Client Build') {
            steps {
                sh 'echo "Building Client Container..."'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Testing..."'
            }
        }

    }
}

pipeline {
 
   agent any

    stages {
        stage('Server Build') {
	agent { dockerfile { dir 'Server' } }            
	steps {
		sh ' echo "Successful!"'
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

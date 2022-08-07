pipeline {
 
   agent any

    stages {
        stage('Server Build') {
            steps {
               
		dir("Server") {
    
		sh 'docker build -t lujain/Server .'
		}
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

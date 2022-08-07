pipeline {
 
   agent any

    stages {
        stage('Server Build') {
            steps {
               sh ' systemctl start docker'
		dir("Server") {
    
		sh './runContainer'
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

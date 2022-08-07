pipeline {
 
   agent any
   options {
	  buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '3')
	}

    stages {
        stage('Server Build') {            
	dir("Server") {
		sh ' ./runContainer"'
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

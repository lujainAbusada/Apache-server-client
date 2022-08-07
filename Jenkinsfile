pipeline {
 
   agent any
   options {
	  buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '3')
	}

    stages {
        stage('Server Build') {            
	steps{
		dir("Server") {
		sh ' ./runContainer.sh'
            }
		}
        }
        stage('Client Build') {
            steps {
     		dir("Client"){     
           	sh 'echo "Building Client Container..."'
		sh ' ./runContainer.sh'
            }

            }
        }
        stage('Test') {
            steps {
                dir("Validation"){                          
                sh 'echo "Testing..."'
                sh ' ./test_httpd.sh'
            }

            }
        }

    }
}

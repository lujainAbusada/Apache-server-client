pipeline {
   agent any
   options {
	  buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '3')
	}

    stages {
        
	stage('Server Build') {            
	     steps{
		sh 'echo "try #7"'
		sh 'echo "Building Server Container..."'
		dir("Server") {
		sh ' ./runContainer.sh'
            	  	}
		}
        }
        stage('Client Build') {
            steps {
		sh 'echo "Building Client Container..."'
     		dir("Client"){     
		sh ' ./runContainer.sh'
            		}
         	   }
        }
        stage('Test') {
            steps {
		sh 'echo "Testing..."'
                dir("Validation"){                          
                sh ' ./test_httpd.sh'
            		}

            }
        }
    }
}

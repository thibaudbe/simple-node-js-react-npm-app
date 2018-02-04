pipeline {
  agent any
  // agent {
  // 	docker {
  // 		image 'node:6-alpine'
  // 		args '-p 3000:3000'
  // 	}
  // }
  environment {
    CI = 'true'
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
    stage('Test') {
      steps {
        sh './scripts/jenkins/test.sh'
      }
    }
    stage('Deliver') {
      steps {
        // sh './scripts/jenkins/deliver.sh'
        sh 'docker-compose up'
        input message: 'Finished using the web site? (Click "Proceed" to continue)'
        sh './scripts/jenkins/kill.sh'
      }
    }
  }
}

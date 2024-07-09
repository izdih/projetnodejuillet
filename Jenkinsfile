pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('izdihardockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t izdihargh/projetnodehubjenkinsnew .'
       
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push izdihargh/projetnodehubjenkinsnew'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}

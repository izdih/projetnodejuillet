pipeline{
  environment {
    registry = "izdihargh/node-app"
    registryCredential = 'izdihardockerhub' 
    dockerImage = ''
  }
  agent any
    stages {
        stage('Building image') {
            steps{
                script {
                  dockerImage = docker.build registry + ":latest"
                }
             }
          }
          stage('Push Image') {
              steps{
                  script
                    {
                        docker.withRegistry( '', registryCredential ) {
                            dockerImage.push()
                        }
                   }
               }
            }
    }
} 

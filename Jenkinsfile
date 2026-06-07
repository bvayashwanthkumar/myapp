pipeline{
  agent any
  stages{
    stage(' Maven Build'){
      steps{
        bat 'mvn clean package'
      }
    }

    stage('Docker Build'){
      steps{
        bat 'docker build -t myapp .'
      }
    }

    stage('Run'){
          steps{
            bat 'docker run myapp'
          }
    }
  }
}

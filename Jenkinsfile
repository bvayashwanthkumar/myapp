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

    stage('Push'){
      
      steps{
          bat 'docker login -u %DOCKER_USER% -p %DOCKER_PASS%' 
          bat 'docker tag myapp yashwanthkumarbva/myapp:v1'
          bat 'docker push yashwanthkumarbva/myapp:v1'
      
      }
    }
  }
}

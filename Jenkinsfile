pipeline {
    agent any
        node {
      stage("Git Clone"){

        git branch: 'master', url: 'https://github.com/poornamidde/Eureka-Server.git'
      }
   
      stage("Docker build"){
        sh 'docker build -t eureka:latest -f Dockerfile .'
        sh 'docker image ls'
      }
        }
}

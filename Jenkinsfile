node {
      stage("Git Clone"){

        git branch: 'master', url: 'https://github.com/poornamidde/Eureka-Server.git'

         stage("Docker build"){
        sh 'sudo docker build -t server1:latest -f Dockerfile .'
        sh 'sudo docker image ls'
      }
      }
}

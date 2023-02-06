node {
stage("Git Clone"){

git branch: 'master', url: 'https://github.com/surya5826/Eureka-Server.git'
}

stage("Docker build"){
  sh 'sudo su -s'
  surya
sh ' docker build -t eureka:latest -f Dockerfile .'
sh ' docker image ls'
stage("Deploy"){
sh ' docker run -d -p 8761:8761 --name eurekaserver eureka:latest'
}
}
}

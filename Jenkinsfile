node {
stage("Git Clone"){

git branch: 'master', url: 'https://github.com/surya5826/Eureka-Server.git'
}

stage("Docker build"){ 
 sh 'sudo chmod 666 /var/run/docker.sock'
 sh 'sudo docker build -t eureka:latest -f Dockerfile .'
sh 'sudo docker image ls'
stage("Deploy"){
sh ' docker run -d -p 8761:8761 --name eurekaserver eureka:latest'
}
}
}

node {
stage("Git Clone"){

git branch: 'master', url: 'https://github.com/surya5826/Eureka-Server.git'
}

stage("Docker build"){ 
 sh 'mvn clean package' 
 sh 'docker build -t eureka:latest .'
sh 'docker images'
stage("Deploy"){
 sh 'docker rm -f eureka||true'
 sh 'docker rm -f eurekaserver||true' 
sh ' docker run -d -p 8761:8761 --name eurekaserver eureka:latest'
}
}
}

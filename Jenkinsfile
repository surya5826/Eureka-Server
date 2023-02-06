node {
stage("Git Clone"){

git branch: 'master', url: 'https://github.com/surya5826/Eureka-Server.git'
}
    stage("Docker build"){
    sh "mvn clean package"
     executed successfully
//     sh 'docker build -t eureka-server:latest -f Dockerfile .'
//         sh 'docker image ls'
    }
}

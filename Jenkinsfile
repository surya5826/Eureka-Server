node {
stage("Git Clone"){

git branch: 'master', url: 'https://github.com/surya5826/Eureka-Server.git'
}
    sh "mvn clean package"
    stage("Docker build"){
     executed successfully
    sh 'docker build -t eureka-server .'
        sh 'docker image ls'
    }
}

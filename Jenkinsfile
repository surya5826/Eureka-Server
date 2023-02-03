node {
stage("Git Clone"){

git branch: 'master', url: 'https://github.com/surya5826/Eureka-Server.git'
}
  stage ("build project"){
    sh "sudo su"
    sh "sudo apt install maven"
    sh "mvn --version"
  sh "mvn clean package"
    execute successfully
  }
}

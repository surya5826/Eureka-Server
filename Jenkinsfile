node {
stage("Git Clone"){

git branch: 'master', url: 'https://github.com/surya5826/Eureka-Server.git'
}
    stage("Docker build"){
    sh "mvn clean package"
     executed successfully
    sh 'docker build -t eureka-server:latest -f Dockerfile .'
        sh 'docker image ls'
    }
withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: '1145', usernameVariable: 'saisuryaprakash0@gmail.com', passwordVariable: 'password']]) {
        sh 'docker login -u saisuryaprakash0@gmail.com -p $password'
	}
    stage("Pushing Image to Docker Hub"){
	     sh 'docker tag eureka-server saisuryaprakash0@gmail.com/eureka-server:latest'
	   sh 'docker push saisuryaprakash0@gmail.com/eureka-server:latest'
    }
	stage("Deploy"){
sh 'docker rm -f eureka-server||true'
sh 'docker run -p 8761:8761 -d --name eureka-server eureka-server:latest'
}
}

pipeline {
    agent any

    stages {
        stages {
      stage('clone repo') {
          steps {
              withCredentials(usernamePassword(credentialsId :jenkins-user-github ,passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME' )){
              // Get some code from a GitHub repository
              bat("""
              git config --global credential.username {GIT_USERNAME}
              git config --global credential.helper "!echo password={GIT_PASSWORD}; echo"
              git clone https://github.com/aakashsehgal/FMU.git

              echo "pulled the code"
              """)

        stage("Checkout") {
            steps {
                checkout([$class: 'GitSCM',
                          branches: [[name: '*/master']],
                          doGenerateSubmoduleConfigurations: false,
                          extensions: [],
                          submoduleCfg: [],
                          userRemoteConfigs: [[url: 'https://github.com/poornamidde/claimsui.git']]])
            }
        }
        stage("Build") {
            steps {
                echo "Building the code..."
                sh "./gradlew build"
            }
        }
        stage("Test") {
            steps {
                echo "Running tests..."
                sh "./gradlew test"
            }
        }
        stage("Deploy") {
            steps {
                echo "Deploying the code to production..."
                sh "./gradlew deploy"
            }
        }
    }
}

pipeline {
    agent {label 'First'}

    stages {
        stage('Clone'){
            steps {
                git url: '', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t go-web-app .'
            }
        }

        stage('Run Docker Image') {
            steps {
                sh 'docker run -d -p 8088:8080 --name -go_web_container go-web-app'
            }
        }
    }
}
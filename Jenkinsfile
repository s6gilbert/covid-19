pipeline {
    agent any

    stages {
        stage('install apache') {
            steps {
                sh 'apt install apache2'
            }
        }
            
        
        stage('update the server') {
            steps {
                sh 'apt update'
            }
        }
        stage('build the server') {
            steps {
                sh 'docker build -t gilbert/covid19:jenkins-$BUILD_NUMBER .'
            }
        }
        stage('create the container') {
            steps {
                sh 'docker run -itd -p 80:80 gilbert/covid19:jenkins-$BUILD_NUMBER'
            }
        }
    }
}
        

            
            
        
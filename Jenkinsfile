pipeline {
    agent any
    stages {
        stage('Update and Install Apache2') {
            steps {
                sh '''
                sudo apt-get update
                sudo apt-get install apache2 -y
                '''
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
        

            
            
        
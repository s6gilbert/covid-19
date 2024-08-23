pipeline {
    agent any
    stages {
        stage('Update and Install Apache2') {
            steps {
                sh '''
                sudo rm -f /var/lib/apt/lists/lock
                sudo rm -f /var/cache/apt/pkgcache.bin
                sudo rm -f /var/cache/apt/srcpkgcache.bin
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
        

            
            
        
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World-Push"'
                sh './packer/buildImage.sh'
                
            }
        }
    }
}

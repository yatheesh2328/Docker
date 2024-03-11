pipeline {
    agent {
        dockerfile true
    }
    
    environment {

        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout') {
            steps {
                script {

                    sh 'rm -rf Docker'
                    sh 'git clone https://github.com/yatheesh2328/Docker.git'
                }
            }
        }

        stage('terraform-init-stage') {
            steps {

                dir('Docker') {
                    sh 'terraform init'
                }
            }
        }

        stage('Planning-stage') {
            steps {
                dir('Docker') {

                    sh 'terraform plan -out tfplan'
                }
            }
        }

        stage('Apply') {
            steps {
                dir('Docker') {
                    
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}

pipeline {
    agent any
    environment {
        // Use Jenkins credentials for AWS access keys
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('Checkout') {
            steps {
                script {
                    // Clone the Git repository containing Terraform files
                    sh 'git clone https://github.com/yatheesh2328/Docker.git'
                }
            }
        }
        stage('Planning') {
            steps {
                // Change to the directory where Terraform files are cloned
                dir('Docker') {
                    sh 'terraform init'
                    sh 'terraform plan -out tfplan'
                    sh 'terraform show -no-color tfplan > tfplan.txt'
                }
            }
        }
        stage('Apply') {
            steps {
                dir('Docker') {
                    // Apply the Terraform plan
                    sh 'terraform apply'
                }
            }
        }
    }
}

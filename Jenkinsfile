pipeline {
    environment {
        AWS_ACCESS_KEY_ID     = 'AKIAW3MEFNZB726QEM5Z'
        AWS_SECRET_ACCESS_KEY = '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'
    }
    agent any
    stages {
        stage('checkout') {
            steps {
                script {
                    dir('project-1') {
                        sh 'git clone https://github.com/yatheesh2328/Docker.git'
                    }
                }
            }
        }
        stage('planning') {
            steps {
                sh 'pwd; cd project-1/ ; terraform init'
                sh 'pwd; cd project-1/ ; terraform plan -out tfplan'
                sh 'pwd; cd project-1/ ; terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Apply') {
            steps {
                sh "pwd; cd project-1/ ; terraform apply"
            }
        }
    }
}

pipeline {
      agent {
        docker { dockerfile true }
    }
    stages {
        stage('Test') {
            steps {
                sh 'terraform --version'
            }
        }
    }
}
//   environment {
//     // Use Jenkins credentials for AWS access keys
//     AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
//     AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
//   }
//   stages {
//     stage('Checkout') {
//       steps {
//         script {
//           // Clone the Git repository containing Terraform files
//           sh 'rm -rf Docker'
//           sh 'git clone https://github.com/yatheesh2328/Docker.git'
//         }
//       }
//     }
//     stage('terraform-init-stage') {
//       steps {
//         // Change to the directory where Terraform files are cloned
//         dir('Docker') {
//           sh 'terraform init'
//         }
//       }
//     }
//     stage('Planning-stage') {
//       steps {
//         dir('Docker') {
//           // Generate Terraform plan and save it to a file named tfplan
//           sh 'terraform plan -out tfplan'
//         }
//       }
//     }
//     stage('Apply') {
//       steps {
//         dir('Docker') {
//           // Apply the Terraform plan
//           sh 'terraform apply tfplan'
//         }
//       }
//     }
//     stage('Destroy') {
//       steps {
//         dir('Docker') {
//           // Apply the Terraform plan
//           sh 'terraform destroy -auto-approve'
//         }
//       }
//     }
//   }
// }

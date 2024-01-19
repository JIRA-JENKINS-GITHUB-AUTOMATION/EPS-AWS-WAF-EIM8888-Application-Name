pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "eu-west-1"
        TF_IN_AUTOMATION = 'true'
        TF_CLI_CONFIG_FILE = credentials('terraform_creds')
    }

    stages {
        stage('Initialize') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    credentialsId: 'awscredential'
                ]]) {
                    sh 'terraform init  -no-color'
                }
            }
        }

        stage('Plan') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    credentialsId: 'awscredential'
                ]]) {
                    sh 'terraform plan  -no-color'
                }
            }
        }

        stage('Deploy - Dev') {
            steps {
                // input "Are you sure you want to apply this Terraform configuration?"
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding', 
                    credentialsId: 'awscredential'
                ]]) {
                    sh 'terraform apply  -no-color -auto-approve'
                }
            }
        }
    }
}

//     post {
//         always {
//             withCredentials([[
//                 $class: 'AmazonWebServicesCredentialsBinding', 
//                 credentialsId: 'awscredential'
//             ]]) {
//                 sh 'terraform destroy  -no-color -auto-approve'
//             }
//         }
//     }
// }

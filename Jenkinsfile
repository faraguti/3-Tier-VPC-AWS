pipeline {
    agent any
    
    environment {
        TF_CLI_ARGS = '-input=false -lock=true -lock-timeout=300s -var-file=terraform.tfvars'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/faraguti/3-Tier-VPC-AWS']])
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }
        
        stage('Confirm and Apply') {
            input {
                message "Terraform plan created. Do you want to apply it?"
                ok "Yes"
                submitter "admin"
            }
            steps {
                script {
                    sh 'terraform apply'
                }
            }
        }
    }
}

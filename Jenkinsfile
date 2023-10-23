pipeline {
    agent any
    tools {
        terraform 'terraform'
        }
    
    stage('Clone repo'){
        git credentialsId: 'b1520cfd-7391-4a13-bcaa-89a09aa1a3c4', url: 'https://github.com/Anushka-1404/IAC-CICD.git'
    }

    stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
              //  withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws_credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                
                sh 'terraform plan'
                
            }

        }
        stage('Terraform Apply') {
            steps {
               // withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws_credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                
                
                sh 'terraform apply --auto-approve'
                
            }
        }
        stage('Terraform Destroy') {
            steps {
                //withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws_credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                
                
                sh 'terraform destroy --auto-approve'
                
            }
        }
    
}
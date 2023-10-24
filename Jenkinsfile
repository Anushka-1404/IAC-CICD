pipeline {
    agent any
    tools {
  terraform 'Terraform'
}
    
    stages{
    
    stage('Clone repo'){
        steps {
        git branch: 'master', credentialsId: 'b1520cfd-7391-4a13-bcaa-89a09aa1a3c4', url: 'https://github.com/Anushka-1404/IAC-CICD.git'
        }
    }

        stage('Terraform Init') {

        
            steps {
                withCredentials([file(credentialsId: 'GCP-SA-Creds')]) 
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {   
                sh 'terraform plan'
                
            }

        } 
        stage('Terraform Apply') {
            steps {

                sh 'terraform apply --auto-approve'
                
            }
        }
        stage('Terraform Destroy') {
            steps {

                sh 'terraform destroy --auto-approve'
                
            }
        }
    }

        

}
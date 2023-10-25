pipeline {
    agent any
    tools {
  terraform 'Terraform'
}
    
    stages{
    
    stage('Clone repo'){
        steps {
        git branch: 'master', credentialsId: '698c50d6-c901-40b5-8994-5454d0955f9f', url: 'https://github.com/Anushka-1404/IAC-CICD.git'
        }
    }

        stage('Terraform Init') {

        
            steps {
                
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
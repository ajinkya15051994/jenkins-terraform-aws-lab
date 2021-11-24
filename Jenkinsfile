pipeline{
    agent any
    
   
    stages{
        stage("init"){
            
            steps{
                sh "/usr/local/bin/terraform init -reconfigure"
            }
        }
        stage("plan"){
            
            steps{
                sh "/usr/local/bin/terraform plan -var-file='dev.tfvars' -out=dev.out"
            }
        }
        stage("apply"){
            
            steps{
                sh "/usr/local/bin/terraform apply -var-file='dev.tfvars' -auto-approve"
            }
        }
    }
}

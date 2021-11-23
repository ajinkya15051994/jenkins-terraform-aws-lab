pipeline{
    agent any
    
   
    stages{
        stage("init"){
            steps{
                sh "sudo terraform init"
            }
        }
        stage("plan"){
            
            steps{
                sh "sudo terraform plan -var-file='dev.tfvars' -out=dev.out"
            }
        }
        stage("apply"){
            
            steps{
                sh "sudo terraform apply -var-file='dev.tfvars' -auto-approve"
       
        
            }
        }
    }
}

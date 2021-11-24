pipeline{
    agent any
    
   
    stages{
        stage("init"){
            
            steps{
                sh "sudo /usr/local/bin/terraform init"
            }
        }
        stage("plan"){
            
            steps{
                sh "sudo /usr/local/bin/terraform plan -var-file='dev.tfvars' -out=dev.out"
            }
        }
        stage("apply"){
            
            steps{
                sh "sudo /usr/local/bin/terraform apply -var-file='dev.tfvars' -auto-approve"
            }
        }
    }
}

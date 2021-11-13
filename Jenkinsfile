pipeline{
    agent any

    stages{
        stage("init"){
            steps{
                sh "terraform init"
            }
        }
        stage("plan"){
            steps{
                sh "terraform plan -var-file='dev.tfvars -out=dev.out'"
            }
        }
        stage("apply"){
            steps{
                sh "terraform apply -var-file='dev.tfvars' -auto-approve"
            }
        }
    }
}
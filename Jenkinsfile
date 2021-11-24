pipeline{
    agent any
    
    parameters {
        choice choices: ['plan', 'apply', 'destroy'], name: 'action'
        choice choices: ['dev.tfvars', 'prod.tfvars'], name: 'env'
    }
    
    stages{
        stage("init"){
            steps{
                sh "/usr/local/bin/terraform init"
            }
        }
        stage("plan"){
            when{
                expression { params.action == 'plan' }
            }
            steps{
                sh "/usr/local/bin/terraform plan -var-file='${ENV}'"
            }
        }
        stage("apply"){
            when{
                expression { params.action == 'apply' }
            }
            steps{
                sh "/usr/local/bin/terraform apply -var-file='${ENV}' -auto-approve"
            }
        }
        stage("destroy"){
            when{
                expression { params.action == 'destroy' }
            }
            steps{
                sh "/usr/local/bin/terraform destroy -var-file='${ENV}' -auto-approve"
            }
        }
    }
}

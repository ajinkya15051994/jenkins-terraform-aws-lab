pipeline{
    agent any
    
    parameters {
        choice choices: ['plan, apply, destory'], name: 'action'
        choice choices: ['dev.tfvars, prod.tfvars'], name: 'env'
    }
    
    stages{
        stage("init"){
            steps{
                sh "terraform init"
            }
        }
        stage("plan"){
            when{
                expression { params.action == 'plan' }
            }
            steps{
                sh "terraform plan -var-file='${ENV}'"
            }
        }
        stage("apply"){
            when{
                expression { params.action == 'apply' }
            }
            steps{
                sh "terraform apply -var-file='${ENV}' -auto-approve"
            }
        }
        stage("destroy"){
            when{
                expression { params.action == 'destroy' }
            }
            steps{
                sh "terraform apply -var-file='${ENV}' -auto-approve"
            }
        }
    }
}

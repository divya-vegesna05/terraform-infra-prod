pipeline{
    agent{
         node {
        label 'agent-1'
    }
    }
    options {
        timeout(time: 1, unit: 'HOURS') 
         ansiColor('xterm')
    }
stages{
         stage("vpc")
         {
          steps{
             
            sh """
              cd 01-vpc
              terraform init
              terraform apply -auto-approve
            """
            }
         }
        stage("sg")
         {
          steps{
             
            sh """
              cd 02-sg
              terraform init
              terraform apply -auto-approve
            """
            }
         }
        stage("vpn")
         {
          steps{
             
            sh """
              cd 03-vpn
              terraform init
              terraform apply -auto-approve
            """
            }
         }
        stage('applb and db') {
            parallel {
                stage('DB') {
                    steps {
                        sh """
                           cd 04-databases
                           terraform init
                           terraform apply -auto-approve
                            """
                         }
                    }
                stage('Applb') {
                    steps {
                        sh """
                           cd 05-applb
                           terraform init
                           terraform apply -auto-approve
                            """
                         }
                    }
            }
        }
    }    
}
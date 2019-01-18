provider "aws" {
  region = "eu-west-1"
}


module "management_asg" {
    source = "../../modules/jenkins"
    environment = "dev"
    service_name = "aws-challenege"
    instance_type = "t2.micro"
    max_size = 1
    min_size = 1
    health_check_type = "ELB"
    management_ssh_port = "22"
    user_data = "../modules/jenkins/launch_configuration/lib/installJenkins.sh"
    
}




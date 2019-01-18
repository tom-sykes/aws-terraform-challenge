provider "aws" {
  region = "${vars.provider}"
}


module "management" {
    source = "../modules/asg"
    environment = "management"
    service_name = "aws_challenege"
    instance_type = "t2.micro"
    max_size = 1
    min_size = 1
    health_check_type = "ELB"
}


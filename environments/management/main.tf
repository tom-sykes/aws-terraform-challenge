module "management_asg" {
    source = "../../modules/asg"
    environment = "dev"
    service_name = "aws_challenege"
    instance_type = "t2.micro"
    max_size = 1
    min_size = 1
    health_check_type = "ELB"
}


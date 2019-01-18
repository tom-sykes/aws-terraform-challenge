# variable "launch_configuration" {
#     description = "A path to the launch configuration"
# }



variable "max_size" {
    description = "Maximum number of instances allowed"

}

variable "min_size" {
    description = "Minimum number of instances allowed"

}

variable "environment" {
    description = "Environment tag"
}


variable "service_name" {
    description = "The name of the service"
}


variable "http_from_port" {
  description = "http listen port from"
  default = 80
}

variable "http_to_port" {
  description = "http listen port to"
  default = 80
}


variable "office_cidr" {
  default = "82.219.68.58/32"
}

variable "vpc_cidr_block" {
  description = "VPC Cidr Block"
  default = "172.30.0.0/16"
}


variable "instance_type" {
  description = "The type of instance to use"
}

variable "health_check_type" {
  default = "ELB"
}

variable "region" {
  default = "eu-west-1"
}

variable "listener_protocol" {
  default = "TCP"
}

variable "management_ssh_port" {
  description = "The Managemenet SSH Port"
}

variable "management_jenkins_listen_port" {
  description = "Jenkins HTTP Post"
  default = "8080"
}

variable "user_data" {
  description = "The path to the user data"
}

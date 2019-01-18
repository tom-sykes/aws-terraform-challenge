variable "vpc_id" {
  description = "The ID of the VPC to attach to"
}
variable "management_ssh_port" {
    description = "The management SSH Port"
}
variable "management_jenkins_listen_port" {
    description = "The management http port for Jenkins Traffic"
}
variable "office_cidr" {
    description = "Leeds office IP"
}

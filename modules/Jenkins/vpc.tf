resource "aws_vpc" "vpc" {
  cidr_block       = "${var.vpc_cidr_block}"
  instance_tenancy = "dedicated"
}



resource "aws_subnet" "public_subnet0" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "172.30.0.0/16"

  # availability_zone = 

  tags = {
    Name = "Public Subnet"
  }
}
resource "aws_subnet" "public_subnet1" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "172.30.0.0/16"

  # availability_zone = 

  tags = {
    Name = "Public Subnet"
  }
}
resource "aws_subnet" "public_subnet2" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "172.30.0.0/16"

  # availability_zone = 


  tags = {
    Name = "Public Subnet"
  }
}
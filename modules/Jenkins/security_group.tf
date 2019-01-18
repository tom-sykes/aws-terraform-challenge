resource "aws_security_group" "management_sg" {
  name        = "SSH Rule"
  description = "Allow SSH Traffic"
  vpc_id      = "${aws_vpc.vpc.id}"

  ingress {
    from_port   = "${var.management_ssh_port}"
    to_port     = "${var.management_ssh_port}"
    protocol    = "tcp"
    cidr_blocks = ["${var.office_cidr}"]
  }
  ingress {
    from_port   = "${var.management_jenkins_listen_port}"
    to_port     = "${var.management_jenkins_listen_port}"
    protocol    = "tcp"
    cidr_blocks = ["${var.office_cidr}"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "management_elb_sg" {
  name = "${var.environment}-${var.service_name}-elb-sg"

  ingress {
    from_port = "${var.management_server_port}"
    protocol = "tcp"
    to_port = "${var.management_server_port}"
    cidr_blocks = ["82.219.68.58/32"]
  }

  egress {
    from_port = "${var.management_server_port}"
    protocol = "tcp"
    to_port = "${var.management_server_port}"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
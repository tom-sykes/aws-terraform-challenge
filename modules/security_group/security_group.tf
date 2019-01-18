resource "aws_security_group" "management_sg" {
  name        = "SSH Rule"
  description = "Allow SSH Traffic"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = "${var.management_ssh_port}"
    to_port     = "${var.management_ssh_port}"
    protocol    = "-1"
    cidr_blocks = ["${var.office_cidr}"]
  }
  ingress {
    from_port   = "${var.management_jenkins_listen_port}"
    to_port     = "${var.management_jenkins_listen_port}"
    protocol    = "-1"
    cidr_blocks = ["${var.office_cidr}"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ec2_sg" {
  name        = "HTTP Rule"
  description = "Allow HTTP traffic"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 80
    to_port     = 80
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
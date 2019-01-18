resource "aws_autoscaling_group" "ASG" {
  availability_zones = ["${data.aws_availability_zones.available.names}"]

  load_balancers = ["${aws_elb.elb.name}"]
  health_check_type = "${var.health_check_type}"

  max_size = "${var.max_size}"
  min_size = "${var.min_size}"

  # vpc_zone_identifier = ["${aws_subnet.public_subnet0.id}, ${aws_subnet.public_subnet1.id}, ${aws_subnet.public_subnet2.id}"]

  vpc_zone_identifier = ["${cidrsubnet("172.30.0.0/20", 8, 3)}"]

  

  tag {
    key = "Name"
    value = "${var.environment}-${var.service_name}"
    propagate_at_launch = true
  }

}

data "aws_availability_zones" "available" {}

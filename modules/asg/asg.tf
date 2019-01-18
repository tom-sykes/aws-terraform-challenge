resource "aws_autoscaling_group" "ASG" {
  launch_configuration = "${aws_launch_configuration.DockerConfiguration.name}"
  availability_zones = ["${data.aws_availability_zones.available.names}"]

  load_balancers = ["${aws_elbload_balancer.load_balancer.name}"]
  health_check_type = "${var.health_check_type}"

  max_size = "${var.max_size}"
  min_size = "${var.min_size}"

  tag {
    key = "Name"
    value = "${var.environment}-${var.application_name}"
    propagate_at_launch = true
  }

}


data "aws_availability_zones" "available" {}
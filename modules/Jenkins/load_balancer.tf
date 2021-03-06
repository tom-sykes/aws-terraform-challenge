resource "aws_elb" "elb" {
  name  = "${var.environment}-${var.service_name}-elb"
  availability_zones = ["${data.aws_availability_zones.available.names}"]
  security_groups = ["${aws_security_group.management_elb_sg.id}"]
  
  "listener"{
    instance_port = "${var.http_to_port}"
    instance_protocol  = "${var.listener_protocol}"
    lb_port = "${var.http_to_port}"
    lb_protocol = "${var.listener_protocol}"
  }
}
resource "aws_launch_configuration" "LaunchConfiguration" {
    name_prefix = "${var.environment}-${var.application_name}"
    instance_type = "${var.instance_type}"
    image_id = "ami-00035f41c82244dab"
    user_data="${var.user_data}"

    security_groups = ["${aws_security_group.management_sg.id}"]

    key_name = "markPendleburyKP.pem"



    lifecycle {
        create_before_destroy = true
    }
}
resource "aws_launch_configuration" "as_conf" {
    name          = "${var.ami_instance}"
    image_id      = "${data.aws_ami.image.id}"
    instance_type = "${var.instance_type_1}" 
}

resource "aws_autoscaling_group" "bar" {
    name                     = "tarraform-asg-example"
    aws_launch_configuration = "${aws_launch_configuration.as_conf.name}"
    
    avai

}
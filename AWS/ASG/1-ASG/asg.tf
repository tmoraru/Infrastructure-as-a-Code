resource "aws_launch_configuration" "as_conf" {
  name          = "web_config"
  image_id      = "${data.aws_ami.image.id}"
  instance_type = "t2.micro"
}


# It's configuration, you tell to your system you want to create an ami with specific configuraiton in it.

resource "aws_autoscaling_group" "bar" {
  name                 = "tarraform-asg-example"
  launch_configuration = "${aws_launch_configuration.as_conf.name}"

  # AutoScaling group at least must have A-Z or subnets. 

  availability_zones = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c",
  ]

# You have to tell what is the minum and maximum size 
  min_size = 1
  max_size = 2

# 
  lifecycle {
    create_before_destroy = true
  }
}

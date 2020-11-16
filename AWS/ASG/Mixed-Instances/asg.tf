# Lauch Template with multiple instance, different size

resource "aws_launch_template" "example" {
    name_prefix      = "example"
    image_id         = "${data.aws_ami.image.id}"
    instance_type    = "c5.large"
}

resource "aws_autoscaling_group" "example" {
    availability_zones = [
        "us-east-1a",
        "us-east-1b",
        "us-east-1c"
        ]

    desired_capacity   = 1
    max_size           = 1
    min_size           = 1

    # lauch template id
    mixed_instances_policy {
        launch_template {
            launch_template_specification {
              launch_template_id = "${aws_lauch_template.example.id}"
            }

            override {
                instance_type     = "c4.large" #if you have c4.large, you will create 3 instances
                weighted_capacity = "3"
            }

            override {
                instance_type     = "c3.large"
                weighted_capacity = "2"
            }
        }
    }
}
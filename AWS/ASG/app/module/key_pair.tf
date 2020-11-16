resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "asg_key_pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

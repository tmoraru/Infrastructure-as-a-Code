resource "aws_key_pair" "us-east-1-mykey" {
  key_name   = "instance_key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
} 

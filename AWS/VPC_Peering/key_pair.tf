resource "aws_key_pair" "us-west-2-key" {
  key_name   = "tatiana_bastion-2"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
tags = "${var.tags}"
} 

resource "aws_key_pair" "bastion" {
  key_name   = "bastion_key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
  }

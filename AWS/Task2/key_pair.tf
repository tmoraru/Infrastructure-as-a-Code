resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "tatiana_bastion_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

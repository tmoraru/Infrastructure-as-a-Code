resource "aws_key_pair" "temporary-key" {
  key_name   = "my-testing-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

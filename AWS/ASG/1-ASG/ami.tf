data "aws_ami" "image" {
  most_recent = true
  owners      = ["099720109477"]  # ubuntu machine -   #Canonical
}

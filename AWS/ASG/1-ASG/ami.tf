data "aws_ami" "image" {
  most_recent = true
  owners      = ["137112412989"] # ubuntu machine - 099720109477    #Canonical
}


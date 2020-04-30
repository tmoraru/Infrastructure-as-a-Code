terraform {
    required_version = "0.11.14"
  backend "s3" {
    bucket = "tatiana-state-bucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

# resource "aws_instance" "wordpress" {
#     instance_type = "t2.micro"
#     ami           = "ami-0323c3dd2da7fb37d"
#   # (resource arguments)

# }


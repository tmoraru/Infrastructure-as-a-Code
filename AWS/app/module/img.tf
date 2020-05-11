data "aws_ami" "image" {
  most_recent = true
  owners      = ["099720109477"] # Canonical   137112412989 - centos ide >>> 099720109477 - ubuntu id
}

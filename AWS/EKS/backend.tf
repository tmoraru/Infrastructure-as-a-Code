terraform {
  backend "s3" {
    bucket = "taniusha-bucket-eks"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
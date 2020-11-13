terraform {
  required_version = "0.11.14"

  backend "s3" {
    bucket = "tatiana-testing-bucket"
    key    = "project/us-east-1/tools/virginia/project.tfstate"
    region = "us-east-1"
  }
}

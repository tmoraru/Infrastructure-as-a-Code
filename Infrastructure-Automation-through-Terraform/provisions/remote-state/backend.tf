terraform {
    backend  "s3"{
        bucket = "terraform-state-bucket0"
        key    = "terraform/testing"
    }

}
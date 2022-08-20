terraform {
  backend "s2" {
    bucket = "b49-rf-remote-state-bucket"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}
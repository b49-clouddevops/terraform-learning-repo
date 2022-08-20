terraform {
  backend "s2" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
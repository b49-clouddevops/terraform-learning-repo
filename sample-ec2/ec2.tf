# Creates EC2
resource "aws_instance" "b49-ec2" {
  ami           = "ami-0aa718de62aea6fbe"
  instance_type = "t2.micro"

  tags = {
    Name    = "my-first-ec2"
    ENV     = "dev"
    Project = "cc"
  }
}



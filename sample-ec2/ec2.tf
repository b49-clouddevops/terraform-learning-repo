# Creates EC2
resource "aws_instance" "b49-ec2" {
  ami           = "ami-052d9bac7baef4290"
  instance_type = "t2.micro"

  tags = {
    Name    = "my-first-ec2"
    ENV     = "dev"
    Project = "cc"
  }
}


What is the main moto of terraform 
1) No Manual changes on console
2) Every change should be versioned and will be applied only after a PR.

ATLAS ( mongo ) :
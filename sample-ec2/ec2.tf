# Creates EC2
resource "aws_instance" "b49-ec2" {
  ami           = "ami-00ff427d936335825"
  instance_type = "t2.micro"

  tags = {
    Name    = "my-first-ec2"
    ENV     = "dev"
    Project = "cc"
  }
}


output "privateip" {
   value  = aws_instance.b49-ec2.private_ip  # private_ip is the attribute
}


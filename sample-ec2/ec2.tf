resource "aws_instance" "b49-ec2" {
  ami           = 
  instance_type = "t2.micro"

  tags = {
    Name = "my-first-ec2"
  }
}
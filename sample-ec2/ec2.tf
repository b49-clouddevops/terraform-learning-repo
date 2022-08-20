resource "aws_instance" "b49-ec2" {
  ami           = "ami-00ff427d936335825"
  instance_type = "t2.micro"

  tags = {
    Name = "my-first-ec2"
  }
}
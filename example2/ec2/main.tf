# Creates EC2
resource "aws_instance" "b49-ec2" {
  ami                     = "ami-052d9bac7baef4290"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [var.sg]
}

variable "sg" {}

output "pub-ip" {
  value = aws_instance.b49-ec2.public_ip 
}
# Creates EC2
resource "aws_instance" "b49-ec2" {
  ami                     = data.aws_ami.base-ami.image_id
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [var.sg]
}

variable "sg" {}

output "pub-ip" {
  value = aws_instance.b49-ec2.public_ip 
}
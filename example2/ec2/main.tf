# Creates EC2
resource "aws_instance" "b49-ec2" {
  ami                     = data.aws_ami.base-ami.image_id
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [var.sg]


  provisioner "remote-exec" {

      connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
        host     = self.public_ip
      }

    inline = [
     "ansible-pull -U https://github.com/b49-clouddevops/ansible.git -e COMPONENT=frontend -e ENV=dev -e TAG_NAME=0.0.2 roboshop.yml"
    ]
  }
}

variable "sg" {}

output "pub-ip" {
  value = aws_instance.b49-ec2.public_ip 
}
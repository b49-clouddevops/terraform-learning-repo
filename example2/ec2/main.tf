# Creates EC2
resource "aws_instance" "b49-ec2" {
  ami                     = data.aws_ami.base-ami.image_id
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [var.sg]

  provisioner "local-exec" {   # To do something on the machine where you're running the terraform
    command = <<EOF 
        sleep 40 
        cd /home/centos/ansible 
        ansible-playbook -i ${self.public_ip} -e ENV=dev -e COMPONENT=frontend -e TAG_NAME=0.0.2 roboshop-push.yml  
    EOF 
   }
}

variable "sg" {}

output "pub-ip" {
  value = aws_instance.b49-ec2.public_ip 
}
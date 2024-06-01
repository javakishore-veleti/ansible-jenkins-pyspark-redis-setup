provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "jenkins_vm" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "ajprs-jenkins-vm"
  }
}

output "jenkins_vm_ip" {
  value = aws_instance.jenkins_vm.public_ip
}

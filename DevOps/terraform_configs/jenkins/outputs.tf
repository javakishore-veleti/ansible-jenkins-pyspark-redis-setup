output "jenkins_vm_ip" {
  value = aws_instance.jenkins_vm.public_ip
}

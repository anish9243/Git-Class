#-----compute/outputs.tf-----
#=============================
output "server_id" {
  value =  aws_instance.jenkins.id
}

output "server_ip" {
  value = aws_instance.jenkins.public_ip
}


output "Ansible-Install_httpd-PublicIP" {
  value       = aws_instance.example.public_ip
  description = "The public IP address of the server"
}

output "Ansible-Install_httpd-URL" {
  value = "http://${aws_instance.example.public_ip}"
}
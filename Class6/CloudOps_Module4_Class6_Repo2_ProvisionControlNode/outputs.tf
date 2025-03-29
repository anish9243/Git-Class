output "Ansible-ControlNode-PublicIP" {
  value       = aws_instance.example.public_ip
  description = "The public IP address of the server"
}

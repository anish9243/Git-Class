#-----compute/outputs.tf-----
#=============================
output "managed_nodes" {
  value = aws_instance.managed_node[*].public_ip
}

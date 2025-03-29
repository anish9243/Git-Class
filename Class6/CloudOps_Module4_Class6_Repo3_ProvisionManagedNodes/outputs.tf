#-----outputs.tf-----
#====================
output "Managed-Nodes" {
  value = module.compute.managed_nodes
}

#-----outputs.tf-----
#====================
output "Jenkins-Public-URL" {
  value = "http://${module.compute.server_ip}:8080"
}
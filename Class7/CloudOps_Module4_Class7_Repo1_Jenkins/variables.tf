#-----variables.tf-----
#=======================
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "root_volume_size" {
  description = "Size of the EBS root volume"
  type        = number
  default     = 50
}
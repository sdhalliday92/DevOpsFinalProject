variable "DevOpsVPC" { 
  description = "CIDR Block for vpc"
  default = "172.25.0.0/16"
}

variable "subnet_a" { 
  description = "Subnet A"
  default = "172.25.1.0/24"
}

variable "subnet_b" {
  description = "Subnet B"
  default = "172.25.2.0/24"
}

variable "open_i" {
  description = "Open internet Access"
  default = "0.0.0.0/0"
}





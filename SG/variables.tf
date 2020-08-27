variable "sg_web_name" {
  default = "DefaultSGWeb"
}

variable "sg_web_description" {
  default = "Allow SSH, Jekins &"
}

variable "ext_cidr_block" {
  default = "0.0.0.0/0"
}

variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 8080, 80, 3306, 4200, 9966]
}

variable "outbound_port" {
  default = 0
}

variable "vpc_id" {
  description = "Passing VPC ID"
}
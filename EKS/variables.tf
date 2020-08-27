variable "vpc_id" {}

variable "subnet_a" {
  description = "This variable states the subnet ID within the VPC"
  default     = "subnet_a_id"
}

variable "subnet_b" {
  description = "This variable states the subnet ID within the VPC"
  default     = "subnet_b_id"
}
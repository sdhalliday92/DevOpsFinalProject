variable "instancemicro" {
  description = "This variable states the instance type for your EC2"
  default     = "t2.micro"
}

variable "instancemed" {
  description = "This variable states the instance type for your EC2"
  default     = "t2.medium"
}

variable "ami_kube" {
  description = "This variable states the ami ID for the EC2 instance"
  default     = "ami-09bf36bbdeaf2c5ce"
}

variable "ami_rds" {
  description = "This variable states the ami ID for the EC2 instance"
  default     = "ami-04c2d1d01e928b8e2"
}

variable "key" {
  description = "This variable states the key name for the EC2 instance"
  default     = "AWSQA"
}

variable "subnet_a" {
  description = "This variable states the subnet ID within the VPC"
  default     = "subnet_a_id"
}

variable "subnet_b" {
  description = "This variable states the subnet ID within the VPC"
  default     = "subnet_b_id"
}

variable "vpc_security_group_ids" {}


variable "username" {
  description = "Username For RDS"
  default     = "admin"
}

variable "password" {
  description = "Password for RDS"
  default     = "C5]K}w9~T;u.WFe-"
}

variable "user_data" {
  description = "script to run when creating instance"
  default = "data.template_file.init.rendered"
}

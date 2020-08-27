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
  default     = "ami-07ee42ba0209b6d77"
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

variable "vpc_security_group_ids" {}
provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials

}

module "paul_instance" {
  source = "./EC2"
}

module "paul_VPC" {
  source = "./VPC"
}

# module "paul_SG" {
#   source = "./SG"
# }
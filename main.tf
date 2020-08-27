provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials

}

provider "kubernetes" {
  host  = data.aws_eks_cluster.cluster.endpoint
  token = data.aws_eks_cluster_auth.cluster.token
}

module "VPC" {
  source = "./VPC"
}

module "SG" {
  source = "./SG"
  vpc_id = module.VPC.vpc_id
}

module "instances" {
  source                 = "./EC2"
  subnet_a               = module.VPC.subnet_a_id
  vpc_security_group_ids = module.SG.SG_id
}

module "cluster1" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_version = "1.16"
  subnets         = [module.VPC.subnet_a_id, module.VPC.subnet_b_id]
  vpc_id          = module.VPC.vpc_id

  worker_groups = [
    {
      instance_type = "t2.micro"
      asg_max_size = 2
    }
  ]
}

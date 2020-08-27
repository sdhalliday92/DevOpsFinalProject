resource "aws_eks_cluster" "cluster1" {
  name     = "cluster1"
  role_arn = "AWSServiceRoleForAmazonEKS"

  vpc_config {
    subnet_ids = [module.VPC.subnet_a_id, module.VPC.subnet_b_id]
  }
}

resource "aws_eks_node_group" "nodegroup1" {
  cluster_name    = aws_eks_cluster.cluster1.name
  node_group_name = "nodegroup1"
  node_role_arn   = "AWSServiceRoleForAmazonEKSNodegroup"
  subnet_ids      = [module.VPC.subnet_a_id, module.VPC.subnet_b_id]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 2
  }

  depends_on = [
    "AWSServiceRoleForAmazonEKS",
    "AWSServiceRoleForAmazonEKSNodegroup",
  ]
}
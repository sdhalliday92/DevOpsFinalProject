output "endpoint" {
  value = aws_eks_cluster.example.endpoint
}

output "kubeconfig-ca-data" {
  value = aws_eks_cluster.example.certificate_authority[0].data
}
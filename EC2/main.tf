resource "aws_instance" "kube" {
  ami                         = var.ami_kube
  instance_type               = var.instancemed
  key_name                    = var.key
  subnet_id                   = var.subnet_a
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.vpc_security_group_ids]

  tags = {
    Name = "EC2_Kubemaster"
  }

}

resource "aws_instance" "rds" {
  ami                         = var.ami_rds
  instance_type               = var.instancemicro
  key_name                    = var.key
  subnet_id                   = var.subnet_a
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.vpc_security_group_ids]

  tags = {
    Name = "EC2_RDS"
  }

}

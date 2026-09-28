data "aws_eks_cluster" "test" {
  name = var.eks_cluster_name
}

data "aws_eks_cluster_auth" "test" {
  name = var.eks_cluster_name
}
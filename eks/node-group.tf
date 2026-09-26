resource "aws_eks_node_group" "test" {
  cluster_name = aws_eks_cluster.test.name

  node_group_name = "${var.cluster_name}-nodes"

  node_role_arn = aws_iam_role.eks_nodes.arn

  subnet_ids = var.private_subnet_ids

  instance_types = [
    var.instance_type
  ]

  capacity_type = "ON_DEMAND"
  ami_type = "AL2023_x86_64_STANDARD"
  disk_size = 20

  scaling_config {
    desired_size = var.desired_nodes
    min_size     = var.min_nodes
    max_size     = var.max_nodes
  }


  update_config {
    max_unavailable = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.worker_node,
    aws_iam_role_policy_attachment.cni,
    aws_iam_role_policy_attachment.ecr_read_only
  ]

  tags = {
    Name      = "${var.cluster_name}-nodes"
    ManagedBy = "terraform"
  }
}
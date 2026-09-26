output "cluster_name" {
  value = aws_eks_cluster.test.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.test.endpoint
}

output "cluster_arn" {
  value = aws_eks_cluster.test.arn
}

output "node_group_name" {
  value = aws_eks_node_group.test.node_group_name
}

output "cluster_security_group_id" {
  value = aws_eks_cluster.test.vpc_config[0].cluster_security_group_id
}
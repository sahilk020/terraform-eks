provider "helm" {
  kubernetes = {
    host                   = data.aws_eks_cluster.test.endpoint
    cluster_ca_certificate = base64decode(
      data.aws_eks_cluster.test.certificate_authority[0].data
    )
    token = data.aws_eks_cluster_auth.test.token
  }
}
resource "helm_release" "frontend" {

  name = "frontend"

  chart = "${path.module}/../helm-charts/frontend"

  namespace = "frontend"

  wait = true

  timeout = 600
}
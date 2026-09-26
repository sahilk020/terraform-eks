aws_region = "ap-south-1"

cluster_name = "test"

# Set this to the Kubernetes version you want to deploy.
kubernetes_version = "1.33"

vpc_id = "vpc-0f50c7ae10d4a987c"

private_subnet_ids = [
  "subnet-0ee8aae34bf4f36ad",
  "subnet-04d5bf2349f222ae5",
  "subnet-0e365a870a4f4bc90"
]

instance_type = "t3.medium"

desired_nodes = 2
min_nodes     = 2
max_nodes     = 3
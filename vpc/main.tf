resource "aws_vpc" "my-vpc" {
  cidr_block = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  lifecycle{
    ignore_changes=[
        tags
    ]
  }
  tags = {
    Name="my-vpc"
  }
  
}
resource "aws_subnet" "public-subnet-1a" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "172.31.32.0/20"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = "true"
  
  lifecycle{
    ignore_changes=[
        tags
    ]
  }

  tags = {
    Name = "public-1"
  }
}

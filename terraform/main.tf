provider "aws" {
  region = "us-east-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.21"
  subnets         = [aws_subnet.my_subnet.id]
  vpc_id          = aws_vpc.my_vpc.id

  node_groups = {
    example = {
      desired_capacity = 1
      max_capacity     = 2
      min_capacity     = 1

      instance_type = "t3.medium"
    }
  }
}

output "cluster_id" {
  value = module.eks.cluster_id
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "kubeconfig" {
  value = module.eks.kubeconfig
}

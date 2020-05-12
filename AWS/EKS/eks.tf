data "aws_eks_cluster" "cluster" {
  name = module.my-cluster.cluster_id
}
data "aws_eks_cluster_auth" "cluster" {
  name = module.my-cluster.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
  version                = "~> 1.9"
}

module "my-cluster" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "12.0.0"
  cluster_name    = "my-cluster"
  cluster_version = "1.14"
  subnets = [
    "subnet-0ac92c1fb1f6dc71d",
    "subnet-04cdaf2fda4bb4cd2",
    "subnet-0142e77afd207e0e0"
  ]
  vpc_id = "vpc-0a03cd78b513f8932"
  worker_groups = [{
    instance_type = "m4.large"
    asg_max_size  = 48
    asg_min_size  = 3
    asg_desired_capacity = 3 

    }
  ]
} 


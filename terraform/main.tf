provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
}

provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = var.clusterName
}

##

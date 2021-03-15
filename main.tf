terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "_________"
  secret_key = "_________"
}
module "network_module" {
  source = "./network_module"
}

module "loadbalancer_module" {
  source = "./loadbalancer_module"
  publicsg_id = "${module.network_module.publicsg_id}"
}


# 15/03/21 -> 04:50:45 -> https://www.youtube.com/watch?v=tQlMj_nyN6s
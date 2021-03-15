# This file will hold variables like regions, subnet id's, VPC id, ami id etc

output "vpcid" {
  value = "${local.vpcid}"
}

output "publicsubnetid1" {
  value = "${local.publicsubnetid1}"
}

output "publicsubnetid2" {
  value = "${local.publicsubnetid2}"
}

output "privatesubnetid" {
  value = "${local.privatesubnetid}"
}

output "env_suffix" {
  value = "${local.env}"
}

# local variables:
locals {
  env = "${terraform.workspace}"

  vpcid_env {
      default = "vpc-2094225d"
      staging = "vpc-2094225d"
      production = "vpc-2094225d"
  }

  vpcid = "${lookup(local.vpcid_env, local.env)}"

  publicsubnetid1_env {
      default = "subnet-81ea8dde"
      staging = "subnet-81ea8dde"
      production = "subnet-81ea8dde"
  }

  publicsubnetid1 = "${lookup(local.publicsubnetid1_env, local.env)}"

  publicsubnetid2_env {
      default = "subnet-cf0464ee"
      staging = "subnet-cf0464ee"
      production = "subnet-cf0464ee"
   }
   publicsubnetid2 = "${lookup(local.publicsubnetid2_env, local.env)}"



  privatesubnetid_env {
      default = "subnet-af40dac9"
      staging = "subnet-af40dac9"
      production = "subnet-af40dac9"
  }

  privatesubnetid = "${lookup(local.privatesubnetid_env, local.env)}"
}
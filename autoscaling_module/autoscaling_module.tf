module "shared_vars" {
  source = "../shared_vars"
}

resource "aws_launch_configuration" "sampleapp_lc" {
  name          = "sampleapp_lc_${module.shared_vars.env_suffix}"
  image_id      = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
}
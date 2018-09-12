provider "aws" {
  region = "${var.region}"
}

module "ec2" {
  source = "modules/ec2"
  project = "${var.project}"
  platform = "${terraform.workspace}"
  team = "${var.team}"
  ami = "${lookup(var.ami, var.region, "ami-08569b978cc4dfa10")}"
  instance_type = "${lookup(var.instance_type, "amazon_linux_ami", "t2.micro")}"
}

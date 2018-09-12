variable "project" {}
variable "platform" {}
variable "team" {}
variable "ami" {}
variable "instance_type" {
  default = "t2.micro"
}

resource "aws_instance" "ec2" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  tags {
    Name = "${var.platform}_ec2"
    Project = "${var.project}"
    Platform = "${var.platform}"
    Team = "${var.team}"
  }
}

output "instance_id" {
  value = "${aws_instance.ec2.id}"
}
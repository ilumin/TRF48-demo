provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "amazon_linux_ami" {
  ami = "${lookup(var.ami, var.region, "ami-08569b978cc4dfa10")}"
  instance_type = "${lookup(var.ec2_size, "amazon_linux_ami", "t2.micro")}"

  tags {
    Name = "ilumin-ec2"
    Project = "TRF48"
  }
}

output "instance_id" {
  value = "${aws_instance.amazon_linux_ami.id}"
}

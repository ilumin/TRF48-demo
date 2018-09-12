provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "amazon_linux_ami" {
  ami = "ami-08569b978cc4dfa10"
  instance_type = "t2.micro"
}

output "instance_id" {
  value = "${aws_instance.amazon_linux_ami.id}"
}

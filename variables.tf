variable "region" {
  default = "ap-southeast-1"
}

variable "ami" {
  type = "map"
  default = {
    ap-southeast-1 = "ami-08569b978cc4dfa10"
  }
}

variable "ec2_size" {
  type = "map"
  default = {
    amazon_linux_ami = "t2.micro"
  }
}
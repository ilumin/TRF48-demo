variable "region" {
  default = "ap-southeast-1"
}

variable "project" {
  default = "FMS"
}

variable "team" {
  default = "ADEN"
}

variable "ami" {
  type = "map"
  default = {
    ap-southeast-1 = "ami-08569b978cc4dfa10"
  }
}

variable "instance_type" {
  type = "map"
  default = {
    amazon_linux_ami = "t2.micro"
  }
}
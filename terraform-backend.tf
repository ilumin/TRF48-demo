terraform {
  backend "s3" {
    bucket = "ilumin-terraform"
    key = "terraform.tfstate"
    workspace_key_prefix = "terraform-states"
    encrypt = "true"
    region = "ap-southeast-1"
  }
}

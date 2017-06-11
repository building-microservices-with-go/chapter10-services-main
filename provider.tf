terraform {
  backend "s3" {
    bucket = "nicjackson-terraform-state"
    key    = "chapter11-main.tfstate"
    region = "eu-west-1"
  }
}

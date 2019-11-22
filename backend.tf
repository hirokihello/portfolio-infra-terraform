terraform {
  backend "s3" {
    bucket = "hirokihello-portfolio-terraform-deploy"
    key    = "terraform/production.tfstate"
    region = "us-northeast-1"
  }
}
provider "aws" {
  region  = var.region
  profile = var.profile
}


module "s3_bucket" { # Chamando o módulo s3 em /moduloes/s3
  source = ".//modules/s3"
  bucket = var.bucket
  acl    = var.acl
  tags   = var.tags
  force_destroy = true


}
#  Deve-se criar primeiro o bucket S3 para depois criar o backend
# terraform {
#   backend "s3" {
#     bucket  = "tf.iac.ramon"
#     profile = "lab"
#     key     = "state/ec2.tfstate"
#     region  = "us-east-2"
#   }
# }
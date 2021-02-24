variable "region" {
  default = "us-east-2"

}

variable "profile" {
  default = "lab"

}

variable "bucket" {
  default = "tf.iac.ramon"

}

variable "acl" {
  default = "public-read-write"

}

variable "tags" {
  default = {
    Name = "terraform_IaC"
  }
}

# variable "force_destroy" {
#   default = "true"
# }
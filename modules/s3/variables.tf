variable "bucket" {
  type = string
}

variable "acl" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "force_destroy" {
  type = string
}

# variable "key" {
#   type = string
# }
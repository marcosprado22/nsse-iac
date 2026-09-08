variable "region" {
  type    = string
  default = "us-east-1"
}

variable "assume-role" {
  type = object({
    role_arn    = string
    external_id = string
  })

  default = {
    role_arn    = "arn:aws:iam::913524941616:role/DevopsNaNuvem-5281d9b4-486e-4aef-9c81-122e51b721ca"
    external_id = "98a9e50c-b880-42f3-b4f8-bcac86c10025"
  }
}

variable "tags" {
  type = map(string)
  default = {
    Project     = "nsse-iac"
    Environment = "production"
  }

}

variable "remote_backend" {
  type = object({
    bucket = string
  })

  default = {
    bucket = "nsse-terraform-state-files"
  }
}    
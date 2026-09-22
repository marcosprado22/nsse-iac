variable "region" {
  default = "us-east-1"
}

variable "assume_role" {
  type = object({
    role_arn    = string,
    external_id = string
  })

  default = {
    role_arn    = "arn:aws:iam::913524941616:role/terraform-role"
    external_id = "98a9e50c-b880-42f3-b4f8-bcac86c10025"
  }
}

variable "tags" {
  type = object({
    Project     = string
    Environment = string
  })

  default = {
    Project     = "nsse",
    Environment = "production"
  }
}

variable "ec2_resources" {
  type = object({
    key_pair_name = string
  })

  default = {
    key_pair_name = "nsse-production-key-pair"
  }
}
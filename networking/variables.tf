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

variable "vpc" {
  type = object({
    name                  = string
    cidr_block            = string
    internet_gateway_name = string
  })

  default = {
    name                  = "nsse-vpc"
    cidr_block            = "10.0.0.0/24"
    internet_gateway_name = "internet-gateway"
  }

}      
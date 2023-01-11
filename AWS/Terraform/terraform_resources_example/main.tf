provider "aws" {
  region = "eu-west-2"
  alias  = "aws-uk"
}

# variable "ami-uk" {
#   description = "machine image uk"
#   default     = "ami-f976839e"
# }

variable "type" {
  default = "t2.micro"
}

variable "zone" {
  description = "map of availability zones for eu-west-2"
  default = {
    # 1 = "eu-west-2a"
    # 2 = "eu-west-2b"
    1 = { zone = "eu-west-2a", ami = "ami-f976839e" }
    2 = { zone = "eu-west-2b", ami = "ami-01b8d743224353ffe" }
  }
}

resource "aws_instance" "example" {
  provider          = "aws.aws-uk"
  for_each          = var.zone
  availability_zone = each.value.zone
  ami               = each.value.ami
  instance_type     = var.type

  #   lifecycle {
  #     prevent_destroy = true
  #   }

  timeouts {
    create = "5m"
    delete = "2h"
  }
}
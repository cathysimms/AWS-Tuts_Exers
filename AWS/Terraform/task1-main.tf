terraform {
    required_providers {
        aws = {
            source =  "hashicorp/aws"
            version = "~> 4.0"

        }
    }
}

locals {
    ami_name = "ami-05e786af422f8082a"
}

variable "some_var" {
    default = "hello"
}

provider "aws" {
    shared_credentials_files = ["~/.aws/credentials"]
    region = "eu-west-1"
}

resource "aws_instance" "example" {
    ami = "${local.ami_name}"
    instance_type = "t2.micro"
    key_name = "AMSkey"
}

output "instance_arn" {
    value = aws_instance.example.arn
}
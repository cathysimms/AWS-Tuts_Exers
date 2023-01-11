terraform {
    required_providers {
        aws = {
            source =  "hashicorp/aws"
            version = "~> 4.0"

        }
    }
}

provider "aws" {
    shared_credentials_files = ["~/.aws/credentials"]
    region = "eu-west-1"
}

module "instance_module" {
    source = "./instances"

    ami_name = var.ami_name
    type = var.type
    key_pair = var.key_pair
}

module "vpc_module" {
    source = "./VPCs"

    cidr_block = var.cidr_block
}
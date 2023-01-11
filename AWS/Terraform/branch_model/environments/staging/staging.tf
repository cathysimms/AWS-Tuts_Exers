variable "environment" {

}

variable "region" {
    
}

variable "ami_id" {
    
}

provider "aws" {
    region = var.region
    version = "~> 4.0"
    shared_credentials_files = ["~/.aws/credentials"]
}

module "infrastructure" {
    source = "../../modules/infrastructure"
    environment = var.environment
    region = var.region
    ami_id = var.ami_id
}
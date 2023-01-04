provider "aws" {
    shared_credentials_files = ["~/.aws/credentials"]
    region = "eu-west-1"
}

resource "aws_instance" "example" {
    ami = "ami-05e786af422f8082a"
    instance_type = "t2.micro"
}
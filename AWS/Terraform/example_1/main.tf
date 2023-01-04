provider "aws" {
    access_key = "access_key"
    secret_key = "secret_key"
    region = "eu-west-1"
}

resource "aws_instance" "example" {
    ami = "ami-05e786af422f8082a"
    instance_type = "t2.micro"
}
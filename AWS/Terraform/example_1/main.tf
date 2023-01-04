provider "aws" {
    access_key = "AKIAZLTYIHIPUEWVTL63"
    secret_key = "o2TPQR1rnuXHvhXpzxS4ox4/c1mWA89c4n9w+LYW"
    region = "eu-west-1"
}

resource "aws_instance" "example" {
    ami = "ami-05e786af422f8082a"
    instance_type = "t2.micro"
}
variable "ami_name" {
    default = "ami-05e786af422f8082a"

}

variable "type" {
    default = "t3.micro"
}

variable "key_pair" {
    default = "AMSkey"
}

variable "cidr_block" {
    default = "10.0.0.0/16"
}
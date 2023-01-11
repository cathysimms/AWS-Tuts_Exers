resource "aws_instance" "example" {
    ami = var.ami_name
    instance_type = var.type
    key_name =  var.key_pair
}
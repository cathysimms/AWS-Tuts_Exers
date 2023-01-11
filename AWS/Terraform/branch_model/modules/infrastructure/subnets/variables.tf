variable "region" {

}

variable "environment" {
    
}

variable "vpc_id" {
  
}

variable "subnet_vars" {
    description = "map of subnets"
    default = {
        1 = { cidr = "10.0.0.0/24", type = "Public" }
        2 = { cidr = "10.0.1.0/24", type = "Private"}
  
}
}
variable "cidr_block" {
  default = {
    publick_1     = "10.0.1.0/24"
    publick_2     = "10.0.2.0/24"
    private_1     = "10.0.3.0/24"
    private_2     = "10.0.4.0/24"
    default_route = "0.0.0.0/0"
    vpc_route     = "10.0.0.0/16"
  }
}

variable "availability_zone" {
  default = {
    availability_zone_1 = "eu-west-1a"
    availability_zone_2 = "eu-west-1b"
  }
}

variable "ami" {
  description = "The AMI to use for instance"
  default = "ami-045269a1f5c90a6a0"
  type = string
}
variable "instance_type" {
    description = "The type of the instance"
    default = "t2.micro"
    type = string
}
variable "availability_zone" {
    description = "value of the availability zone"
    default = "us-east-1a"
    type = string
}
variable "size" {
    description = "value of the size of the ebs volume"
    default = 10
}
variable "device_name" {
    description = "the device name"
    default = "/dev/sdh"
}
variable "region" {
    description = "name of the region"
    default = "us-east-1"
    type = string
}
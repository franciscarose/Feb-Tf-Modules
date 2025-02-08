module "ec2_ebs" {
  source = "../"
  ami = "ami-045269a1f5c90a6a0"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  size = 10
  device_name = "/dev/sdh"
  region = "us-east-1"
}
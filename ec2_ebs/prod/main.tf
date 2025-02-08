module "prod" {
  source = "../"
  ami = "ami-045269a1f5c90a6a0"
  instance_type = "t3.micro"
  availability_zone = "us-east-1a"
  size = 1000
  device_name = "/dev/sdh"
  region = "us-east-1"
}
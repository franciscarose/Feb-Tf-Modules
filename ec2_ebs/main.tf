# Provisioning ec2 instance with ebs volume
resource "aws_instance" "dev-server" {
  ami               = var.ami # calling the variable that was declared in variables.tf
  instance_type     = var.instance_type # 255 gb
  availability_zone = var.availability_zone
  # key_name = "demo"
  tags = {
    Name       = "dev-server"
    env        = "development"
    Created_by = "terraform"
  }
}
# create EBS volume and its needs to be attached to an instance. EBS needs operating system while s3 bucket does not need operating system
# s3_bucket is available world wide
resource "aws_ebs_volume" "dev-vol" {
  availability_zone = var.availability_zone # same as instance
  size              = var.size           # in GB
  tags = {
    Name       = "dev-server"
    env        = "development"
    Created_by = "terraform"
  }
}
# Attaching EBS volume to ec2 instance
resource "aws_volume_attachment" "dev-server" {
  device_name = var.device_name
  volume_id   = aws_ebs_volume.dev-vol.id
  instance_id = aws_instance.dev-server.id
}
resource "aws_db_instance" "rds" {
  identifier           = var.identifier
  allocated_storage    = var.allocated_storage
  storage_type         = "gp2"
  engine              = var.engine
  engine_version      = var.engine_version
  instance_class      = var.db_instance_class
  db_name             = var.db_name
  username           = var.db_username
  password           = var.db_password
  publicly_accessible = var.publicly_accessible
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name  = var.db_subnet_group_name
  skip_final_snapshot = true
}
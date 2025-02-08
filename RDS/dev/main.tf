module "dev" {
  source               = "../"
  db_name              = "mydb"
  db_username         = "admin"
  db_password         = "securepassword"
  db_instance_class   = "db.t3.micro"
  allocated_storage   = 20
  engine              = "MySQL"
  engine_version      = "8.0"
  identifier          = "my-rds"
  publicly_accessible = false
  vpc_security_group_ids = ["sg-0123456789abcdef0"]
  db_subnet_group_name  = "my-db-subnet-group"
}
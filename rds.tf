resource "aws_db_instance" "demo-mysql-db" {
    identifier              = "mysqldatabase"
    storage_type            = "gp2"   
    allocated_storage       = 20
    engine                  = "mysql"
    engine_version          = "8.0.27"
    instance_class          = "db.t2.micro"
    port                    = "3306"
    
    db_name                 = "myDemoDB"
    username                = var.username
    password                = var.password

    availability_zone       = "us-east-1a"
    publicly_accessible     = true
    deletion_protection     = true
    skip_final_snapshot     = false
    
    tags = {
      name                  = "demo mysql rds instance using terraform"
    }
}
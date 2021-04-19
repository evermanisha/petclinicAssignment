data "aws_vpc" "selected" {
  filter {
    name = "tag:Name"
    values = ["main"]
  }
}


resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "postgres"
  engine_version       = "9.6.6"
  instance_class       = "db.t2.micro"
  name                 = "petclinic"
  username             = "postgres"
  password             = "petclinic"
# character_set_name    = "UTF8"
  skip_final_snapshot  = true
  publicly_accessible = true
    vpc_security_group_ids = [aws_security_group.allow-db-connect.id]
}
provider "aws" {
  region = "eu-west-1"
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
}

resource "aws_security_group" "allow-db-connect" {
    vpc_id      = data.aws_vpc.selected.id
    name        = "allow-db-connect"
    description = "security group that allows pg client"
    egress {
      from_port   = 5432
      to_port     = 5432
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }



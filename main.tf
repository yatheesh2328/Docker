provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "allow_SGB" {
    name        = "allow_SGB"
    description = "allow_SGB"

    ingress {
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "firstinstance" {
    ami             = "ami-07d9b9ddc6cd8dd30"
    instance_type   = "t2.medium"
    security_groups = [aws_security_group.allow_SGB.id]  
    user_data       = file("Docker-EC2.sh")  
    tags = {
        Name = "Docker-VM"
    }
}

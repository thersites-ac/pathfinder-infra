provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "database" {
  ami = "ami-0f57b4cec24530068"
  instance_type = "t3.micro"
  user_data = "${file("user-data.sh")}"
  tags = {
    Name = "db-server"
  }
  security_groups = [
    "db"
  ]
  key_name = "DB dev"
}

output "public_ip" {
  value = aws_instance.database.public_ip
}

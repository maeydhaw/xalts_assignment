provider "aws" {
  region     = "us-west-2"
  access_key = "your_access_key_id"
  secret_key = "your_secret_access_key"
}

resource "aws_instance" "myrestapiinstance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "my-rest-api-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y docker
              service docker start
              docker run -d -p 80:80 my-rest-api
              EOF
}

resource "aws_security_group" "myrestapisg" {
  name        = "myrestapisg-security-group"
  description = "Allow inbound traffic on port 80"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Adjust to restrict access as needed
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "myrestapisg-security-group"
  }
}


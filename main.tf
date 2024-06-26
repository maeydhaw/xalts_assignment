provider "aws" {
  region     = "us-west-2"
  access_key = "A-PleaseUseYoursAK"
  secret_key = "A/PleaseUseYoursSK"
}

resource "aws_instance" "myrestapiinstance" {
  ami           = "ami-0663b059c6536cac8"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.myrestapisg.name]

  tags = {
    Name = "my-rest-api-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y git docker
              service docker start
              git clone https://github.com/maeydhaw/xalts_assignment.git
              cd xalts_assignment
              docker build -t my-rest-api .
              docker run -d -p 5000:5000 my-rest-api
              
              # Allow traffic on port 5000 using firewalld (CentOS/RHEL 7+)
              systemctl start firewalld
              firewall-cmd --zone=public --add-port=5000/tcp --permanent
              firewall-cmd --reload
              EOF
}

resource "aws_security_group" "myrestapisg" {
  name        = "myrestapisg-security-group"
  description = "Allow inbound traffic on port 80"

  ingress {
    from_port   = 5000
    to_port     = 5000
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


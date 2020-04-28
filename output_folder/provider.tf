provider "aws"{
    region = "us-east-1"
    version = "~> 2.59"
}

// Create Key
resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "tatiana_bastion_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
// Create Instance
resource "aws_instance" "web-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}
// Create Sec Group


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
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

  tags = {
    Name = "allow_tls"
  }
}
// Create Route53
resource "aws_route53_record" "www" {
  zone_id = "Z2C2TTKT34Z4V4"
  name    = "www.tatianamoraru.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web-output.public_ip}"]
}
// Outputs

output "key_pair" {
  value       =  "${aws_key_pair.us-east-1-key-output.key_name}"
  description = ""
}

output "instance_id" {
  value       = "${aws_instance.web-output.id}"
  description = ""
}

output "instance_ip" {
  value       = "${aws_instance.web-output.public_ip}"
  
}

output "instance_arn" {
  value       = "${aws_instance.web-output.arn}"
  
}

output "public_dns" {
  value       = "${aws_instance.web-output.public_dns}"
  
}
output "route53" {
  value = "${aws_route53_record.www.name}"
}

output "message" {
  value       = "Login to wordpress and reset passwd"
  
}


# output "name" {
#   value       = "Tatiana"
  
# }

# output "lastname" {
#   value       = "Moraru"
  
# }

# resource "aws_key_pair" "us-east-1-key" {
#   key_name   = "tatiana_bastion2"
#   public_key = "${file("~/.ssh/id_rsa.pub")}"
# } 

# output "key_name" {
#   value       = "${aws_key_pair.us-east-1-key.key_name}"
  
# }

# output "actual_key" {
#   value       = "${aws_key_pair.us-east-1-key.public_key}" #to see the key 
  
# }

# output "actual_key_id" {
#   value       = "${aws_key_pair.us-east-1-key.id}"
  
# }

resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
 
  tags = {
    Name = "HelloWorld"
  }
}

output "instance_id" {
  value       = "${aws_instance.web.id}"
  
}

output "instance_arn" {
  value       = "${aws_instance.web.arn}"
  
}

output "instance_ip" {
  value       = "${aws_instance.web.public_ip}"
  
}

output "public_dns" {
  value       = "${aws_instance.web.public_dns}"
  
}

output "availability_zone" {
  value       = "${aws_instance.web.availability_zone}"
  
}



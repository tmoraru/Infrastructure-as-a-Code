resource "aws_instance" "db" {
  ami = "ami-0005790de8df237bc" #ami for centos 7 
  #ami = "ami-0007489126bb76c2e" #ami for centos 6 
  instance_type ="t2.micro"
  key_name = "${aws_key_pair.bastion.key_name}"
  subnet_id = "${aws_subnet.dev_private1.id}"
  availability_zone = "eu-west-2a" 
  user_data = "${file("user_data_db.sh")}" 
  associate_public_ip_address = true
  source_dest_check = false 
  vpc_security_group_ids = ["${aws_security_group.allow_tls_db.id}"]  
  
  #tags ="${var.tags}"

tags = {
    Name = "VPC_Peering_DB"
  }

}

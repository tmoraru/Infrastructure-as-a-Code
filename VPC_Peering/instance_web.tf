resource "aws_instance" "web" {
  ami           = "ami-0007489126bb76c2e" #entos 6 ami
  instance_type = "t2.micro"
  key_name      =     "${aws_key_pair.bastion.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  subnet_id = "${aws_subnet.dev1.id}"
  user_data = "${file("user_data_web.sh")}"
  availability_zone = "eu-west-2a"
  associate_public_ip_address = true
  source_dest_check = false
  vpc_security_group_ids = ["${aws_security_group.allow_tls_web.id}"]


 tags = "${var.tags}"

 tags = {
    Name = "VPC_Peering_WEB"
  }

}
  

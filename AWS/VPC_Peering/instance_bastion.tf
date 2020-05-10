resource "aws_instance" "instance_bastion" {
  ami = "ami-0affd4508a5d2481b" 
  instance_type ="t2.micro"
  key_name = "${aws_key_pair.us-west-2-key.key_name}"
  subnet_id = "${aws_subnet.dev1.id}"
  availability_zone = "eu-west-2a"
  associate_public_ip_address = true
  source_dest_check = false
  vpc_security_group_ids = ["${aws_security_group.allow_tls_bastion.id}"]  
  #tags ="${var.tags}"

tags = {
    Name = "VPC_Peering_Bastion"
  }

}

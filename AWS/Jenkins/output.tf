output "vpc" {
  value = [
    "${aws_vpc.dev.id}        ${aws_vpc.dev.cidr_block}"
  ]
}

output "public_subnets" {
  value = [
    "${aws_subnet.dev1.id}     ${aws_subnet.dev1.cidr_block}     ${aws_subnet.dev1.availability_zone}" ,
    "${aws_subnet.dev2.id}     ${aws_subnet.dev2.cidr_block}     ${aws_subnet.dev2.availability_zone}" ,  
    "${aws_subnet.dev3.id}     ${aws_subnet.dev3.cidr_block}     ${aws_subnet.dev3.availability_zone}"
  ] 
}

output "private_subnets" {
  value = [
    "${aws_subnet.dev_private1.id}     ${aws_subnet.dev_private1.cidr_block}     ${aws_subnet.dev_private1.availability_zone}",
    "${aws_subnet.dev_private2.id}     ${aws_subnet.dev_private2.cidr_block}     ${aws_subnet.dev_private2.availability_zone}",
    "${aws_subnet.dev_private3.id}     ${aws_subnet.dev_private3.cidr_block}     ${aws_subnet.dev_private3.availability_zone}"
  ]
}

output "igw_id" {
  value = "${aws_internet_gateway.dev.id}   
}

output "ngw_id" {
   value = "${aws_nat_gateway.ngw.id}        
}

output "region" {
  value       = "${var.region}"
}

  output "instance_public_ip" {
    value       = "${aws_instance.jenkins_server.public_ip}"
  }

  output "tags" {
  value       = "${var.tags}"
}

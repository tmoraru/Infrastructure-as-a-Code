output "IP" {
  value = "${aws_instance.web.public_ip}"
}

output "KEY" {
  value = "${aws_instance.web.key_name}"
}


output "Sec_Group" {
  value = "${aws_security_group.allow_tls.name}"
}

output "AMI" {
  value = "${aws_instance.web.ami}"
}

output "ROUTE53" {
  value = "${aws_route53_record.route53.name}"
}
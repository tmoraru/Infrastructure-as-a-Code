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

resource "aws_route53_record" "route53" {
  zone_id = "Z2C2TTKT34Z4V4"
  name    = "www.tatianamoraru.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}



resource "aws_instance" "testing-instance" {
  ami                         = "${var.ami_instance}"
  instance_type               = "${var.instance_type_1}"
  key_name                    = "${aws_key_pair.temporary-key.key_name}"
  #vpc_id                      = "${aws_vpc.my-vpc.id}"
  subnet_id                   = "${aws_subnet.pub1.id}"
  availability_zone           = "${var.az1}"
  associate_public_ip_address = true
  source_dest_check           = false                                    # Controls if traffic is routed to the instance when the destination address

  # does not match the instance. Used for NAT or VPNs.

  user_data              = "${file("user_data.sh")}"
  vpc_security_group_ids = ["${aws_security_group.allow_tls_testing_instance.id}"]
}

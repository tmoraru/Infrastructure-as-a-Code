resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.pub1.id}" #must be public ip, because through it will go traffic
}

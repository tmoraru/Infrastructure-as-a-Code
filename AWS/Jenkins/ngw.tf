resource "aws_eip" "nat" {
  vpc      = true
}
resource "aws_nat_gateway" "ngw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.cidr_block1_public.id}"


  tags = "${var.tags}"
}

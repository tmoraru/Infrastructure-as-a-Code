resource "aws_route_table" "route_table1" {
  vpc_id = "${aws_vpc.my-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet-gateway.id}"
   
  }
}

 
#Attached from subnet association
resource "aws_route_table_association" "pub1" {
  subnet_id      = "${aws_subnet.pub1.id}"
  route_table_id = "${aws_route_table.route_table1.id}"
  
}

resource "aws_route_table_association" "pub2" {
  subnet_id      = "${aws_subnet.pub2.id}"
  route_table_id = "${aws_route_table.route_table1.id}"
  
}

resource "aws_route_table_association" "pub3" {
  subnet_id      = "${aws_subnet.pub3.id}"
  route_table_id = "${aws_route_table.route_table1.id}"
  
}
 
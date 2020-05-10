#Route_Table for Accepter
resource "aws_route" "route_table_public" {
  route_table_id            ="${aws_route_table.route_table2.id}"
  destination_cidr_block    ="192.168.0.0/16"
  vpc_peering_connection_id ="pcx-000b0afcb91ffc409"
}

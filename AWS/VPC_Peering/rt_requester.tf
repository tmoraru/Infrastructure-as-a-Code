#disable for accepter
resource "aws_route" "public_r"{
    route_table_id  ="${aws_route_table.route_task_public.id}"
    destination_cidr_block ="10.0.0.0/16" 
    vpc_peering_connection_id ="${aws_vpc_peering_connection.peer.id}"
}
resource "aws_route" "private_rt"{
    route_table_id  ="${aws_route_table.route_task_private.id}"
    destination_cidr_block ="10.0.0.0/16" 
    vpc_peering_connection_id ="${aws_vpc_peering_connection.peer.id}"
}

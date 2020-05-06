resource "aws_vpc_peering_connection_accepter" "peer" {
provider                  = "aws.peer"
vpc_peering_connection_id = "pcx-000b0afcb91ffc409"
auto_accept               = true
tags = {
Side = "Accepter"
}
}

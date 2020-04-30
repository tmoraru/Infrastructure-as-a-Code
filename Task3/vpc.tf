

resource "aws_vpc" "dev" {
 cidr_block = "${var.cidr_block}"


tags =  {
    Environment = "${var.Environment}"
      Department = "${var.Department}"
      Team = "${var.Team}"
      Created_by = "${var.Created_by}"
   }
}

resource "aws_internet_gateway" "dev" {
  vpc_id = "${aws_vpc.dev.id}"
 tags =  {
    Environment = "${var.Environment}"
      Department = "${var.Department}"
      Team = "${var.Team}"
      Created_by = "${var.Created_by}"
   }
}

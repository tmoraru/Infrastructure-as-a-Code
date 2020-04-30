resource "aws_key_pair" "us-west-2-key" {
  key_name   = "tatiana_bastion-2"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
 tags =  {
    Environment = "${var.Environment}"
      Department = "${var.Department}"
      Team = "${var.Team}"
      Created_by = "${var.Created_by}"
   }
} 

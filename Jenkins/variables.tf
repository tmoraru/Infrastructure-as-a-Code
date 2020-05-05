variables "user" {}
variable "region" {}
variables "key_name" {}
variables "ami" {}
variable "sec_group_name" {}
variable "ingress_cidr_blocks" {type = "list"}
variable "egress_cidr_blocks" {type = "list"}
variable "cidr_block" {} #vpc

#vars for public subnets
variable "cidr_block1_public" {}
variable "cidr_block2_public" {}
variable "cidr_block3_public" {}

#vars for private subnets
variable "cidr_block1_private" {}
variable "cidr_block2_private" {}
variable "cidr_block3_private" {}

#vars for availability zones
variable "az1" {}
variable "az2" {}
variable "az3" {}

variable "tags" {
  type = "map"
}

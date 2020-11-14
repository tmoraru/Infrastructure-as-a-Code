# Public Subnets

resource "aws_subnet" "pub1"{
    vpc_id     = "${aws_vpc.my-vpc.id}"
    cidr_block = "${var.cidr_block_pub1}"
    availability_zone  = "${var.az1}"
}

resource "aws_subnet" "pub2"{
    vpc_id     = "${aws_vpc.my-vpc.id}"
    cidr_block = "${var.cidr_block_pub2}"
    availability_zone  = "${var.az2}"
}

resource "aws_subnet" "pub3"{
    vpc_id     = "${aws_vpc.my-vpc.id}"
    cidr_block = "${var.cidr_block_pub3}"
    availability_zone  = "${var.az3}"
}


# Private Subnets

resource "aws_subnet" "priv1"{
    vpc_id     = "${aws_vpc.my-vpc.id}"
    cidr_block = "${var.cidr_block_priv1}"
    availability_zone  = "${var.az1}"
}

resource "aws_subnet" "priv2"{
    vpc_id     = "${aws_vpc.my-vpc.id}"
    cidr_block = "${var.cidr_block_priv2}"
    availability_zone  = "${var.az2}"
}

resource "aws_subnet" "priv3"{
    vpc_id     = "${aws_vpc.my-vpc.id}"
    cidr_block = "${var.cidr_block_priv3}"
    availability_zone  = "${var.az3}"
}

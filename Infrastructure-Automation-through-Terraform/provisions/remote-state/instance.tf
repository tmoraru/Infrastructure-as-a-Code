resource "aws_instance" "example" {
    ami           = "ami-04bf6dcdc9ab498ca"
    instance_type = "t2.micro"
    key_name      = "${aws_key_pair.us-east-1-mykey.key_name}"

    provisioner "local-exec" {
        command = "echo ${aws_instance.example.public_ip} >> private_ips.txt"
    
    }

}
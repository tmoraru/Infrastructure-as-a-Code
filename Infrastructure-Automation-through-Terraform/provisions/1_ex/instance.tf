resource "aws_instance" "example" {
    ami           = "ami-04bf6dcdc9ab498ca"
    instance_type = "t2.micro"
    key_name      = "${aws_key_pair.us-east-1-mykey.key_name}"

    provisioner "file" {
        source  = "user_date.sh"
        destination = "/tmp/script.sh"
    
    }
    provisioner "remote-exec" {
        inline = [
            "chmod +x /tmp/script.sh",
            "sudo /tmp/script.sh"
        ]
    }

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = "${file("~/.ssh/id_rsa")}"
  }
}
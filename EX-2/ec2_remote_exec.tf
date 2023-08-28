resource "aws_instance" "my_ec2_remote" {
    ami = "ami-051f7e7f6c2f40dc1"
    instance_type = "t2.micro"
    key_name = "tmp"
    tags = {
        Name = "TF Instance"
    }

    provisioner "remote-exec" {
        inline = [ 
            "sudo yum install httpd -y",
            "sudo service httpd start",
            "sudo chkconfig httpd on"
        ]

        connection {
            type = "ssh"
            user = "ec2-user"
            host = aws_instance.my_ec2_remote.public_ip
            private_key = file("${path.module}/tmp.pem")
        } 
    }
}


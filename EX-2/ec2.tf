resource "aws_instance" "my_ec2" {
    ami = "ami-051f7e7f6c2f40dc1"
    instance_type = "t2.micro"
    key_name = "tmp"
    tags = {
        Name = "TF Instance"
    }

    provisioner "local-exec" {
        command = "echo ${aws_instance.my_ec2.id} >> instance_id.txt"
    }
}


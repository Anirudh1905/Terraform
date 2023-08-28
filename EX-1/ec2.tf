resource "aws_instance" "my_ec2" {
    ami = "ami-051f7e7f6c2f40dc1"
    instance_type = "t2.micro"
    tags = {
        Name = "TF Instance"
    }
}

resource "aws_instance" "myec2usw2" {
    provider = aws.usw2
    ami = "ami-03f2f5212f24db70a"
    instance_type = "t2.micro"
    tags = {
        Name = "TF Instance"
    }
}

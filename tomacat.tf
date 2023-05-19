resource "aws_security_group" "tomcat" {
  name        = "tomcat"
  description = "Allow apavhe inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "tomcat from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "tomcat from VPC"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "tomcat"
  }
}

resource aws_instance "tomcat"{
    ami=var.ami_id
    instance_type=var.instance_type
    security_groups=[aws_security_group.tomcat.id]
    subnet_id=var.subnet
    tags={
        Name="tomcat"
        team="devops"
    }

}
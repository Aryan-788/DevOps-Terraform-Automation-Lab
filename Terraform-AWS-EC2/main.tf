terraform {
        required_providers {
                aws = {
                        source = "hashicorp/aws"
                        version = "6.19.0"
                }
        }
        required_version = ">= 1.2.0"

}

provider "aws" {
        region = "ap-south-1"
}

resource "aws_instance" "my_ec2_instance" {
        count = 2
        ami = "ami-02b8269d5e85954ef"
        instance_type = "t3.micro"
        tags = {
                Name = "ETP_Instance"
        }
}


output "ec2_public_ips" {
        value = aws_instance.my_ec2_instance[*].public_ip
}


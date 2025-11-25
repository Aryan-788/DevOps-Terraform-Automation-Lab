terraform {
        required_providers {
                aws = {
                        source = "hashicorp/aws"
                        version = "6.21.0"
                }
        }

        required_version = ">= 1.2.0"
}

provider "aws" {
        region = "ap-south-1"
}
locals {
        instances = {"Aryan":"ami-02b8269d5e85954ef", "Mohit":"ami-03695d52f0d883f65", "Rohan":"ami-02b8269d5e85954ef", "shubham":"ami-0ae0093476c7a1da6"}
}

resource "aws_instance" "aws_ec2_test" {
        for_each = local.instances
        ami = each.value
        instance_type = "t3.micro"
        tags = {
                Name = each.key
        }

}

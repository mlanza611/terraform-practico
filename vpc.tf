resource "aws_vpc" "test-terraform-vpc" {
  cidr_block       = "172.16.0.0/16"

  tags = {
    Name = "test-terraform-vpc"
  }
}

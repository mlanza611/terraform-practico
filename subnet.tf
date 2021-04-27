resource "aws_subnet" "test-terraform-subnet" {
  vpc_id     = aws_vpc.test-terraform-vpc.id
  cidr_block = "172.16.1.0/24"
  availability_zone_id = "us-east-1a"

  tags = {
    Name = "test-terraform-subnet"
  }
}
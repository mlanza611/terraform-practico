provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
resource "aws_instance" "test-terraform-ec2" {
  ami           = "ami-06e2b3882a1e987b7"
  instance_type = "t2.micro"
  key_name      = "key-pair-ssh"
  vpc_security_group_ids = [aws_security_group.test-terraform-sg.id]
  subnet_id = aws_subnet_test.terraform-subnet.id
  tags = {
    Name      ="test-terraform-ec2"
    terraform ="True"
 }
}

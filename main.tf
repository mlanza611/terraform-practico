provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
resource "aws_instance" "despliegue-terraform-ec2" {
  ami           = "ami-06e2b3882a1e987b7"
  instance_type = "t2.micro"
  key_name      = "key-pair-ssh"
  tags = {
    Name      ="Instance_test"
    terraform ="True"
 }
}

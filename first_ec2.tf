provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "my_ec2" {

  ami           = "ami-0f02b24005e4aec36"
  instance_type = "t2.micro"
}

output "Ip_Address" {

  value = aws_instance.my_ec2.public_ip

}

/*
resource "aws_instance" "my_ec2_1" {

  ami           = "ami-0f02b24005e4aec36"
  instance_type = "t2.nano"
}
*/

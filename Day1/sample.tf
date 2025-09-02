provider "aws" {
  region = "us-east-1"

}
resource "aws_instance" "aarvisample" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t3.micro"
  tags = {
    Name = "aarvisample"
  }

}
provider "aws" {
  alias  = "america"
  region = "us-east-1"
}
provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
}

resource "aws_instance" "sample" {
  ami           = "ami-0b016c703b95ecbe4"
  instance_type = "t3.micro"
  tags = {
    Name = "sample1"
  }
  provider = aws.ohio

}
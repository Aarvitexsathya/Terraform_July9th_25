provider "aws" {
  alias  = "america"
  region = "us-east-1"
}
provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
}
# This is how to use variable in terraform using the input variables block. But in realtime we will use tfvars file to pass the values.
variable "instance_type" {
    description = "Type of instance to create" 
    type        = string
    default     = "t3.micro"
  
}

variable "ami_id" {
    description = "AMI ID for the instance" 
    type        = string
    default     = "ami-0b016c703b95ecbe4"
  
}

resource "aws_instance" "sample1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "sample1"
  }
  provider = aws.ohio

}

resource "aws_instance" "sample2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "sample2"
  }
  provider = aws.ohio
  
}
 #Output block to display the public IP of the instance created

output "public_ip1" {
  value = aws_instance.sample1.public_ip
  description = "Public IP of the instance sample1"
}
output "public_ip2" {
  value = aws_instance.sample2.public_ip
  description = "Public IP of the instance sample2"
}
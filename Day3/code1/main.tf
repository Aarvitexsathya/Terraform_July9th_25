resource "aws_instance" "variable1" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
      Name = "variable1"
    }
}
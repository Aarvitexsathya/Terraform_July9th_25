resource "aws_vpc" "Aarvi" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true
    tags = {
        Name = var.Name
        owner = "Aarvi"
        environment = var.environment
    }
}
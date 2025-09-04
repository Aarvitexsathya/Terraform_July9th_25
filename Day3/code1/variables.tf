variable "ami_id" {
    description = "AMI ID for the instance" 
    type        = string
    default     = "ami-00ca32bbc84273381"
  
}

variable "instance_type" {
    description = "Type of instance to create" 
    type        = string
    default     = "t3.micro"
  
}

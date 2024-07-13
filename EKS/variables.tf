variable "vpc_cidr" {
  description = "CIDR for Jenkins VPC"
  type        = string
}

variable "public_subnets" {
  description = "Public subnets CIDR blocks"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets CIDR blocks"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type for EKS worker nodes"
  default     = "t2.micro"
}

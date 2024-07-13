variable "vpc_cidr" {
  description = "cidr for jenkins vpc"
  type        = string
}
variable "public_subnets" {
  description = "pub sub for cidr"
  type        = list(string)

}
variable "instance_type" {
  description = "instance type"
  type        = string

}

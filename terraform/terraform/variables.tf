variable "region"         { type = string, default = "eu-west-2" }
variable "windows_ami_id" { type = string }                     # e.g., Windows 2022 AMI
variable "instance_type"  { type = string, default = "t3.large" }
variable "subnet_id"      { type = string }
variable "sg_id"          { type = string }

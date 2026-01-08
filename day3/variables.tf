variable "hello-ami" {
  type        = string
  description = "AMI"
  default     = "ami-068c0051b15cdb816"
}

variable "hello-instance_type" {
  type        = string
  default     = "t3.micro"
  description = "instance_type"
}

variable "hello-name" {
  type        = string
  default     = "hello-boa-vm"
  description = "AWS VM Name"

}

variable "novm" {
  type        = number
  description = "number of VMS"
}

variable "instance_type_v" {
  type = map(string)
  default = {
    "web" = "t3.micro"
    "db"  = "t2.small"
  }
}
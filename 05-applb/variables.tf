variable "Project_name" {
  type = string
  default = "roboshop"
}
variable "Environment" {
  type = string
  default = "prod"
}
variable "common_tags" {
  type = map
  default = {
    Project = "roboshop"
    Environment = "prod"
    Terraform = "true"
  }
}
variable "applb_tags" {
  type = map
  default = {
    Name = "app-lb"
  }
}
variable "vpc_security_group_id" {
  type = list
  default = []
}
variable "subnet_id" {
  type = string
  default = ""
}
variable "zone_name" {
  type = string
  default = "jasritha.tech"
}

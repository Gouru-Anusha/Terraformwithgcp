variable "region" {
  type        = string
  default     = "asia-southeast1"
  description = "region information"

}

variable "zone" {
  default = "asia-southeast1-c"
}


variable "project" {
  type        = string
  default     = "firstproject-01-417610"
  description = "Project for Terraform Practise"
}

variable "vpc_network_name" {
  default = "pforproject1"
}

variable "vminstance" {
  default = "webserver-01"
}
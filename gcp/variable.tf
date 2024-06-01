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

variable "vpc_networks" {
  default = 2
}

variable "vpc_names" {
    description = "vpc name"
    type = list(string)
    default = [ "network-1","network-2" ]
  
}
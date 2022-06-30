variable "account_id" {
  description = "The account ID"
  type        = string
}

variable "auto_accept" {
  description = "T/F value for auto accepting the connection"
  type        = bool
  default     = true
}

variable "environment" {
  description = "The Environment"
  type        = string
}

variable "primary_vpc_id" {
  description = "The ID of the VPC with which you are creating the VPC Peering Connection"
  type        = string
}

variable "primary_vpc_cidr" {
  description = "The cidr range for the primary vpc"
  type        = string
}

variable "primary_vpc_name" {
  description = "The name of the VPC with which you are creating the VPC Peering Connection"
  type        = string
}

variable "region" {
  description = "The region"
}

variable "secondary_vpc_cidr" {
  description = "The cidr range for the secondary vpc"
  type        = string
}

variable "secondary_vpc_id" {
  description = "The ID of the requester VPC"
  type        = string
}

variable "secondary_vpc_route_tables" {
  description = "A list of the secondary route tables to be peered"
  type        = list(string)
}

variable "secondary_vpc_name" {
  description = "The name of the requester VPC"
  type        = string
}

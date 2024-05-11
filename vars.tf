variable "ami_id" {
  description = "AMI ID variable"
  type        = string
  default     = "ami-04ff98ccbfa41c9ad"
}

variable "az" {
  description = "Availability Zone variable"
  type        = string
  default     = "us-east-1a"
}

variable "itype" {
  description = "Instance Type variable"
  type        = string
  default     = "t2.micro"
}

variable "key" {
  description = "Key Pair variable"
  type        = string
  default     = "gitbash(home)"
}

variable "vpc" {
  description = "VPC variable"
  type        = string
  default     = "vpc-03037c342ae504b56"
}

variable "user1" {
  description = "user1 variable"
  type        = string
  default     = "user1"

}

variable "user2" {
  description = "user2 variable"
  type        = string
  default     = "user2"

}
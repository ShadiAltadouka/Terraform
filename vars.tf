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

variable "bucket_name" {
  description = "bucket variable"
  type        = string
  default     = "shadis-first-bucket"

}

variable "bucket_id" {
  description = "bucket ID variable"
  type        = string
  default     = "aws_s3_bucket.tfbucket1.id"

}

variable "bucket_status" {
  description = "bucket status"
  type        = string
  default     = "Enabled"

}

variable "vpc_name" {
  description = "vpc name variable"
  type        = string
  default     = "testvpc"

}

variable "public_cidr_name" {
  description = "public cidr name variable"
  type        = string
  default     = "pub-subnet1"

}

variable "private_cidr_name" {
  description = "private cidr name variable"
  type        = string
  default     = "priv-subnet1"

}

variable "vpc_cidr" {
  description = "vpccidr variable"
  type        = string
  default     = "192.168.0.0/16"

}

variable "vpc_cidr_pub" {
  description = "public cidr variable"
  type        = string
  default     = "192.168.1.0/24"

}

variable "vpc_cidr_priv" {
  description = "private cidr variable"
  type        = string
  default     = "192.168.2.0/24"

}

variable "igw_name" {
  description = "Internet Gateway name variable"
  type        = string
  default     = "igw1"

}

variable "ngw_name" {
  description = "NAT Gteway name variable"
  type        = string
  default     = "ngw1"

}

variable "rt1_name" {
  description = "route table 1 name variable"
  type        = string
  default     = "rt1"

}

variable "rt2_name" {
  description = "route table 2 name variable"
  type        = string
  default     = "rt2"
}
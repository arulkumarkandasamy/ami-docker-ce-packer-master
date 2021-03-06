variable "aws_region" {
  description = "Default AWS Region"
  default = "us-west-1"
}

variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "aws_key_name" {
  default = "id_rsa"
}

variable "connection_timeout" {
  default = "120s"
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default = "10.0.0.0/16"
}

variable "test-docker-ce_subnet_cidr" {
  description = "CIDR for the Docker CE Test Public Subnet"
  default = "10.0.5.0/24"
}

variable "aws_amis_base" {
  description = "aws-us-east-1 Ubuntu 16.04 LTS w/ Docker 17.03.0-ce"
  default = {
    us-west-1 = "ami-aba094cb"
  }
}

variable "owner" {
  description = "Infrastructure Owner"
  default = " Arulkumar Kandasamy "
}

variable "environment" {
  description = "test-docker-ce Environment"
  default = "test-docker-ce"
}

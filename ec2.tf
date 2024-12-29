provider "aws" {
  region = "ap-south-1"
}
variable "ami" {
  default = "ami-0fd05997b4dff7aac"
}
variable "type" {
  default = "t2.micro"
}
variable "Number" {
 default = "2"
}
resource "aws_instance" "test" {
  ami = var.ami
  instance_type = var.type
  key_name = "MAHESH2003"
  count = var.Number
  tags = {
    Name = "Terraform"
  }

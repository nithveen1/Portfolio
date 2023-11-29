provider "aws" {
  region = "us-east-1"  
  access_key = var.access
  secret_key = var.secreate
}

variable "access" {
  type = string
}

variable "secreate" {
  type = string
}
resource "aws_instance" "my_server"  {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"  
  count = 1       
 
  tags = {
    Name = "my_server_Example"
  }
}



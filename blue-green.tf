# Blue-Green strategy Configuration file

provider "aws" {
  
}

# Create an EC2 instance
resource "aws_instance" "blue" {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t2.micro"
  
  tags = {
    Name = "Blue Instance"
  }
}

# Create an EC2 instance
resource "aws_instance" "green" {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t2.micro"
  
  tags = {
    Name = "Green Instance"
  }
}

output "blue_status" {
  value = aws_instance.blue.state
}

output "green_status" {
  value = aws_instance.green.state
}
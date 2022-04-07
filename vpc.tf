resource "aws_vpc" "my_vpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "my_vpc"
  }
}
resource "aws_subnet" "web_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.10.0.0/20"
  availability_zone = "us-east-1"
  tags = {
    Name = "web_subnet"
  }
}
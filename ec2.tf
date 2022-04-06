resource "aws_instance" "web-rhel" {
  ami           = ami-0b0af3577fe5e3532
  instance_type = "t2.micro"

  tags = {
    Name = "web-rhel"
  }
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "my_vpc"
  }
}

resource "aws_subnet" "web_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.10.10.0/20"
  availability_zone = "us-west-2a"

  tags = {
    Name = "web_subnet"
  }
}
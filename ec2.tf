resource "aws_instance" "web-rhel" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  root_block_device {
    volume_size           = "20"
    volume_type           = "gp2"
  }
  subnet_id = aws_subnet.web_subnet.id
  tags = {
      name = "web-rhel"
  }
  vpc_security_group_ids = [ "sg-0ee7859daf81997fc" ]
}
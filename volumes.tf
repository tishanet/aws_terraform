resource "aws_ebs_volume" "media" {
  availability_zone = "us-east-1a"
  size              = 10

  tags = {
    Name = "madia"
  }
}

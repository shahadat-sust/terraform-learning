resource "aws_default_vpc" "default" {
  tags = {
    Name = "vpc-demo-6"
  }
}

resource "aws_default_subnet" "default_az_a" {
  availability_zone = "${var.AWS_REGION}a"
  tags = {
    Name = "az-a-demo-6"
  }
}

resource "aws_default_subnet" "default_az_b" {
  availability_zone = "${var.AWS_REGION}b"
  tags = {
    Name = "az-b-demo-6"
  }
}

resource "aws_default_subnet" "default_az_c" {
  availability_zone = "${var.AWS_REGION}c"
  tags = {
    Name = "az-c-demo-6"
  }
}


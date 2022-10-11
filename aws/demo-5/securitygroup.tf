data "aws_ip_ranges" "asian_ec2" {
    regions = [ "ap-southeast-1", "ap-northeast-1" ]
    services = [ "ec2" ]
}

resource "aws_security_group" "from_asia" {
  name = "from_asia"

  ingress {
    cidr_blocks = slice(data.aws_ip_ranges.asian_ec2.cidr_blocks, 0, 20)
    description = "from_asia_desc"
    from_port = 443
    to_port = 443
    protocol = "tcp"
  }

  tags = {
    CreateDate = data.aws_ip_ranges.asian_ec2.create_date
    SyncToken = data.aws_ip_ranges.asian_ec2.sync_token
  }
}
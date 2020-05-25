data "aws_ip_ranges" "us_ec2" {
  regions  = ["us-east-1"]
  services = ["ec2"]
}

resource "aws_security_group" "from_us" {
  name = "from_us"
  description = "terraform"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    # cidr_blocks = data.aws_ip_ranges.us_ec2.cidr_blocks
    # due to the number of cidr_blocks the above statement will fail so we  slice and get the top 20 only
    cidr_blocks = slice(data.aws_ip_ranges.us_ec2.cidr_blocks, 0, 20)
  }

  tags = {
    CreateDate = data.aws_ip_ranges.us_ec2.create_date
    SyncToken  = data.aws_ip_ranges.us_ec2.sync_token
  }
}

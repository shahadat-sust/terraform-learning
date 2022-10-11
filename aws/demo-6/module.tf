module "consul" {
  source = "github.com/wardviaene/terraform-consul-module.git?ref=terraform-0.12"
  key_name = aws_key_pair.mykey.key_name
  key_path = var.PATH_TO_PRIVATE_KEY
  region = var.AWS_REGION
  servers = 3
  instance_type = "t2.micro"
  vpc_id = aws_default_vpc.default.id
  platform = var.AWS_PLATFORM
  ami = var.AWS_AMIS
  subnets = {
    "0" = aws_default_subnet.default_az_a.id
    "1" = aws_default_subnet.default_az_b.id
    "2" = aws_default_subnet.default_az_c.id
  }
}

output "consul-address" {
  value = module.consul.server_address
}

resource "aws_instance" "demo-1" {
    ami = lookup(var.AMIS, var.AWS_REGION)
    instance_type = "t2.micro"
}
resource "aws_instance" "demo-3" {
    ami = lookup(var.AMIS, var.AWS_REGION)
    instance_type = "t2.micro"

    provisioner "local-exec" {
        command = "echo ${aws_instance.demo-3.public_ip} >> public_ips.txt"
    }
}

output "ip" {
    value = aws_instance.demo-3.public_ip
}
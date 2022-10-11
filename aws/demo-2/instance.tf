
resource "aws_instance" "demo-2" {
    ami = lookup(var.AMIS, var.AWS_REGION)
    instance_type = "t2.micro"
    //You will have to add your IP in security group under VPC to get access from remote pc
    key_name = aws_key_pair.mykey.key_name

    provisioner "file" {
        source        = "script.sh"
        destination   = "/tmp/script.sh"
    }

    provisioner "remote-exec" {
        inline        = [
        "chmod +x /tmp/script.sh",
        "sudo /tmp/script.sh"
        ]
    }

    connection {
        type = "ssh"
        user = var.INSTANCE_USERNAME
        private_key = file(var.PATH_TO_PRIVATE_KEY)
        host = self.public_ip
    }
}
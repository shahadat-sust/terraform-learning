variable "AWS_REGION" {
    type = string
}

variable "AMIS" {
    type = map(string)
    default = {
        ap-southeast-1 = "ami-0f74c08b8b5effa56"
    }
}

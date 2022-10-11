variable "AWS_REGION" {}
variable "AMIS" {
    type = map(string)
    default = {
        ap-southeast-1 = "ami-0f74c08b8b5effa56"
        ap-northeast-1 = "ami-0822295a729d2a28e"
    }
}
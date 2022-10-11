variable "AWS_REGION" {

}
variable "AWS_PLATFORM" {
    default = "ubuntu"
}
variable "AWS_AMIS" {
    type = map(string)
    default = {
        ap-southeast-1 = "ami-0f74c08b8b5effa56"
        ap-northeast-1 = "ami-0822295a729d2a28e"
    }
}
variable "PATH_TO_PUBLIC_KEY" {
    default = "mykey.pub"
}
variable "PATH_TO_PRIVATE_KEY" {
    default = "mykey"
}

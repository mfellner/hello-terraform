variable "do_token" {}
variable "public_key" {
    default = "${file("~/.ssh/id_rsa.pub")}"
}
variable "cloud_config" {
    default = "${file("cloud-config.yml")}"
}

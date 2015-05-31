# Configure the DigitalOcean Provider
provider "digitalocean" {
    token = "${var.do_token}"
}

resource "digitalocean_droplet" "coreos1" {
    image = "coreos-681.0.0"
    name = "coreos1"
    region = "fra1"
    size = "512mb"
    private_networking = true
    user_data = "${var.cloud_config}"
}

resource "digitalocean_ssh_key" "default" {
    name = "Terraform Example"
    public_key = "${var.public_key}"
}

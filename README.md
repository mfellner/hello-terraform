# Hello Terraform

#### Prerequisites

Create a file `terraform.tfvars` for the following variables:

* do_token (required)
* public_key (optional, default is *~/.ssh/id_rsa.pub*)

#### Get Digital Ocean SSH keys

    curl -X GET -H 'Content-Type: application/json' \
        -H 'Authorization: Bearer $DO_TOKEN' \
        "https://api.digitalocean.com/v2/account/keys"

#### Generate a New Discovery URL

    curl -w "\n" https://discovery.etcd.io/new

## Resources

* [https://www.digitalocean.com/community/tutorials/how-to-set-up-a-coreos-cluster-on-digitalocean]()

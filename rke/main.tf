terraform {
  required_providers {
    rke = {
      source = "rancher/rke"
      version = ">= 1.0.0"
    }
  }
}
provider "rke" {}

resource "rke_cluster" "cluster" {
  nodes {
    address          = "3.94.191.158"
    user             = "ubuntu"
    role             = ["controlplane", "etcd"]
    ssh_key_path     = "~/.ssh/id_rsa"
  }

    nodes {
    address          = "3.95.23.162"
    user             = "ubuntu"
    role             = ["worker"]
    ssh_key_path     = "~/.ssh/id_rsa"
  }

    nodes {
    address          = "54.159.39.54"
    user             = "ubuntu"
    role             = ["worker"]
    ssh_key_path     = "~/.ssh/id_rsa"
  }


enable_cri_dockerd = true

}

output kube_config {
    sensitive = true
    value = rke_cluster.cluster.kube_config_yaml
}
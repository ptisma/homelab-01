resource "hcloud_network" "homelab" {
  name     = "homelab"
  ip_range = "10.0.0.0/16"
}

resource "hcloud_network_subnet" "homelab-public" {
  network_id   = hcloud_network.homelab.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = "10.0.0.0/24"
}

resource "hcloud_network_subnet" "homelab-private" {
  network_id   = hcloud_network.homelab.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = "10.0.1.0/24"
}

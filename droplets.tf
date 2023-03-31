resource "digitalocean_droplet" "test_droplet" {
  for_each = toset(var.droplet_names)
  image    = "ubuntu-20-04-x64"
  name     = each.value
  region   = "fra1"
  size     = "s-1vcpu-1gb"
}
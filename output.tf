output "ip_addresses" {
  value = [
    for instance in digitalocean_droplet.test_droplet:
    instance.ipv4_address
  ]
}

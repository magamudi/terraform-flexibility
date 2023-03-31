resource "digitalocean_droplet" "test_droplet" {
  count  = length(var.droplet_names)
  image  = "ubuntu-20-04-x64"
  name   =  var.droplet_names[count.index]
  region = "fra1"
  size   = "s-1vcpu-1gb"

  provisioner "local-exec" {
    when    = destroy
    command = "echo 'Droplet ${self.name} is being destroyed!'"
  }
}
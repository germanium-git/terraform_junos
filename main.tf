terraform {
  required_providers {
    junos = {
      source = "jeremmfr/junos"
    }
  }
}

# Configure the Junos Provider
provider "junos" {
  ip         = "10.20.30.40"
  username   = "admin"
  password   = "mypass"
}

# Configure an interface
resource "junos_interface" "xe111" {
  name = "xe-1/1/1"
  description  = "test terraform"
}

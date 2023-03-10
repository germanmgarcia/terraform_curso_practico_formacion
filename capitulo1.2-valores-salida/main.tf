resource "random_string" "rg-name" {
  length  = 12
  upper   = true
  numeric = false
  lower   = true
  special = false
}

output "groupName" {
  value = random_string.rg-name.result
}
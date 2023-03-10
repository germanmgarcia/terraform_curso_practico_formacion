terraform {
  backend "azurerm" {
    storage_account_name = "statestorageamin"
    container_name       = "terraformstate"
    key                  = "terraform.tfstate"
    access_key           = "Yzfn5fTmPxXSczs8OCDXqkPtuYb1QsPdmN5gFWNQztKHUjHlBca4aTgbwEKCTiCAnoMz80bRQg1l+ASthQw2fQ=="
  }
}
terraform {
  backend "azurerm" {
    storage_account_name = "statestorageamin"
    container_name       = "terraformstate"
    key                  = "terraform.tfstate"
    access_key           = "CcwdVAIwfY1/pn5GiWGWCG3RIWC2eOm3q7eQaAdnriVg6BI22RHxuFE9BDJq47OYMb1X4SREiUWu+AStji114w=="
  }
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.59.0"
    }
  }
}


provider "azurerm" {
  features {}
  

}


resource "azurerm_resource_group" "example" {
 
  name     = "rg-terraform"
  location = "West Europe"
  tags = {
    environment = "Dev"
    project   = "MyLab"
    owner     = "rohit"
    newowner  = "newrohit" 
   }
  lifecycle {
    
  }
}

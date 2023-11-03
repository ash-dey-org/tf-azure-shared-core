data "azurerm_resource_group" "rg" {
  name = "${var.env}-${var.region}-${var.company}-rg-${var.proj}"
}


# Create Communication Services
resource "azurerm_communication_service" "acs" {
  name                = "central-communication-service"
  resource_group_name = data.azurerm_resource_group.rg.name
  data_location       = var.location
}


#creat email communnication service
resource "azurerm_email_communication_service" "aecs" {
  name                = "central-email-communication-service"
  resource_group_name = data.azurerm_resource_group.rg.name
  data_location       = var.location
}
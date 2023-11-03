data "azurerm_resource_group" "rg" {
  name = "${var.env}-${var.region}-${var.company}-${var.proj}-rg"
}

# Create Communication Services
resource "azurerm_communication_service" "acs" {
  name                = "central-communication-service"
  resource_group_name = data.azurerm_resource_group.rg.name
  data_location       = var.location
}
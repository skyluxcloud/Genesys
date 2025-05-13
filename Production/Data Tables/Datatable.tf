terraform {
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.15.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id     = var.client_id
  oauthclient_secret = var.client_secret
  aws_region = "us-west-2"             # or your region
}

resource "genesyscloud_architect_datatable" "customers" {
  name        = "Customers"
  division_id = var.division_id
  description = "Table of Customers"
  properties {
    name  = "key"
    type  = "string"
    title = "Email"
  }
  properties {
    name  = "identifier"
    type  = "integer"
    title = "Customer Identifier"
  }
  properties {
    name    = "deleted"
    type    = "boolean"
    title   = "Is Deleted"
    default = "false"
  }
  properties {
    name  = "address"
    type  = "string"
    title = "Address"
  }

  properties {
    name  = "vip"
    type  = "boolean"
    title = "VIP Customer"
  }
}


resource "genesyscloud_architect_datatable_row" "john-smith" {
  datatable_id = genesyscloud_architect_datatable.customers.id
  key_value    = "johnsmith@example.com"
  properties_json = jsonencode({
    "identifier" = 2749
    "address"    = "123 Main Street"
    "vip"        = true
  })
}


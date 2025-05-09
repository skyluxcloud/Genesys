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


resource "genesyscloud_routing_queue" "sched_etobicoke_gdont" {

  
  for_each            = toset(var.queue_names)
  name                = each.key
  description        = "GD_Ont_Scheduling_Execution"
  division_id        = var.division_id
  acw_wrapup_prompt  = "MANDATORY_TIMEOUT"
  acw_timeout_ms     = 10000
  calling_party_name         = "Enbridge Gas"
  calling_party_number       = "1-855-228-4898"
  enable_transcription       = false
  skill_evaluation_method    = "BEST"

  media_settings_call {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
  }
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
}
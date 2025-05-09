variable "client_id" {}
variable "client_secret" {}
variable "whisper_audio_id" {
  default = null
}

variable "division_id" {
  description = "ID of the first division"
  type        = string
}

variable "queue_names" {
  type    = list(string)
  default = [
    "Queue 1_Dev",
    "Queue 2_Dev",
    "Queue 3_Dev",
    "Queue 4_Dev",
    "Queue 5_Dev",
    "Queue 6_Dev",
    "Queue 7_Dev",
    "Queue 8_Dev",
    "Queue 9_Dev",
    "Queue 10_Dev"
  ]
}



# variable "queues" {
#   type = list(object({
#     name        = string
#     division_id = string
#   }))

#   default = [
#     # Division 1
#     { name = "Queue A1", division_id = "div1-id" },
#     { name = "Queue A2", division_id = "div1-id" },
#     { name = "Queue A3", division_id = "div1-id" },
#     { name = "Queue A4", division_id = "div1-id" },
#     { name = "Queue A5", division_id = "div1-id" },
#     { name = "Queue A6", division_id = "div1-id" },
#     { name = "Queue A7", division_id = "div1-id" },
#     { name = "Queue A8", division_id = "div1-id" },
#     { name = "Queue A9", division_id = "div1-id" },
#     { name = "Queue A10", division_id = "div1-id" },

#     # Division 2
#     { name = "Queue B1", division_id = "div2-id" },
#     { name = "Queue B2", division_id = "div2-id" },
#     { name = "Queue B3", division_id = "div2-id" },
#     { name = "Queue B4", division_id = "div2-id" },
#     { name = "Queue B5", division_id = "div2-id" },
#     { name = "Queue B6", division_id = "div2-id" },
#     { name = "Queue B7", division_id = "div2-id" },
#     { name = "Queue B8", division_id = "div2-id" },
#     { name = "Queue B9", division_id = "div2-id" },
#     { name = "Queue B10", division_id = "div2-id" },

#     # Division 3
#     { name = "Queue C1", division_id = "div3-id" },
#     { name = "Queue C2", division_id = "div3-id" },
#     { name = "Queue C3", division_id = "div3-id" },
#     { name = "Queue C4", division_id = "div3-id" },
#     { name = "Queue C5", division_id = "div3-id" },
#     { name = "Queue C6", division_id = "div3-id" },
#     { name = "Queue C7", division_id = "div3-id" },
#     { name = "Queue C8", division_id = "div3-id" },
#     { name = "Queue C9", division_id = "div3-id" },
#     { name = "Queue C10", division_id = "div3-id" },
#   ]
# }
# variable "division_2_id" {
#   description = "ID of the second division"
#   type        = string
# }

# variable "queues" {
#   description = "List of queues with names and division assignments"
#   type = list(object({
#     name        = string
#     division_id = string
#   }))
# }
variable "infiscal_token" {
   description = "Infiscal service token"
   type  = string
   sensitive = true
}

variable "supbase_token" {
   description = "Supbase service token"
   default = "SUPBASE_MUSIC_STREAM"
   type  = string
    sensitive = true

}

variable "upstash_token" {
   description = "Supbase service token"
   default = "UPSTASH_MUSIC_STREAM"
   type  = string
    sensitive = true

}
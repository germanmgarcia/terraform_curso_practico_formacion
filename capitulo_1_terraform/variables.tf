variable "group_name" {
  type        = string
  description = "EL nombre esperado de tu grupo de recursos"
}

variable "group_location" {
  type        = string
  description = "Que regi0on hospedar'a a tus recursos, por defecto seraa 'westus'"
}

variable "storage_account_name" {
  type        = string
  description = "EL nombre de tu cuenta de almacenamiento"

}

variable "containers" {
  type        = list(any)
  description = "Nombres esperados para los blob containers"
  default     = ["storagelogs", "receivedfiles", "movements", "events"]

}
variable "postgres_image" {
  type    = string
  default = "postgres:16-alpine"
}
variable "postgres_password" {
  type      = string
  sensitive = true
}
variable "postgres_db" {
  type    = string
  default = "notesdb"
}
variable "backend_image" {
  type    = string
  default = "python:3.12-slim"
}
variable "backend_port" {
  type    = number
  default = 5000
}
variable "backend_replicas" {
  type    = number
  default = 1
}
variable "project_name" {
  type        = string
  description = "Nombre del proyecto transferido desde la raíz"
}
variable "environment" {
  type        = string
  description = "Entorno (dev, staging, prod)"
}
variable "frontend_image" {
  type        = string
  description = "Imagen para el contenedor frontend"
}
variable "frontend_port" {
  type        = number
  description = "Puerto mapeado para el frontend"
}
variable "app_network_name" {
  type        = string
  description = "Nombre de la red que viene del módulo network"
}
variable "postgres_volume_name" {
  type        = string
  description = "Nombre del volumen que viene del módulo storage"
}

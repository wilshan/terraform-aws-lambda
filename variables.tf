variable "function_name" {
  type = string
  default = ""
}

variable "lambda_handler" {
  type = string
  default = ""
}

variable "runtime" {
  type = string
  default = ""
}

variable "lambda_execution_role" {
  type = string
  default = ""
}

variable "s3_bucket" {
  type = string
  default = ""
}

variable "s3_key" {
  type = string
  default = ""
}

variable "region_name" {
  type = string
  default = ""
}

variable "lambda_layer_file" {
  type = string
  default = ""
}

variable "lambda_layer_name" {
  type = string
  default = ""
}

variable "layer_runtime" {
  type = string
  default = ""
}

variable "region_name" {
  type = string
  default = ""
}

variable "function_name" {
  description = "Name of the lambda function"
  type        = string
  default     = "Mylambdatest"
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

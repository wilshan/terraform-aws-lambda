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

variable "compatible_runtimes" {
  type = string
  default = ""
}

variable "bucketname" {
  type = string
  default = ""
}

variable "event_bucket_name" {
  type = string
  default = ""
}

variable "aws_lambda_function" {
  type = string
  default = ""
}

variable "event_type" {
  type = string
  default = ""
}

variable "prefix" {
  type = string
  default = ""
}

variable "suffix" {
  type = string
  default = ""
}

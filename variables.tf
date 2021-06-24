variable "function_name" {
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

#s3_bucket

#variable "s3_bucket" {
#  type = string
 # default = ""
#}

#"lambdacode.zip"

#variable "s3_key" {
#  type = string
 # default = ""
#}

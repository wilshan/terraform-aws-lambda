Mylambdatest
variable "function_name" {
  type = string
  default = ""
}
index.lambda_handler
variable "lambda_handler" {
  type = string
  default = ""
}
"python3.8"
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

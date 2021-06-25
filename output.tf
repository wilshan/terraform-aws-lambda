output "lambda_function_name" {
  value = aws_lambda_function.test_lambda.function_name
}

output "lambda_function_role" {
  value = aws_lambda_function.test_lambda.role
}

output "lambda_function_layers" {
  value = aws_lambda_function.test_lambda.layers
}

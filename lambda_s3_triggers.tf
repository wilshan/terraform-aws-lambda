# Adding S3 bucket as trigger to my lambda and giving the permissions
##################
resource "aws_s3_bucket_notification" "aws-lambda-trigger" {
bucket = var.event_bucket_name
lambda_function {
lambda_function_arn = aws_lambda_function.test_lambda.arn
events              = [var.event_type]
filter_prefix       = var.prefix
filter_suffix       = var.suffix
}
}

#resource "aws_lambda_permission" "test" {
#statement_id  = var.statement_id1
#action        = var.action1
#function_name = aws_lambda_function.test_lambda.function_name
#principal = var.principle1
#source_arn = var.source_arn
#}

resource "aws_s3_bucket_notification" "lambda-trigger" {
    bucket = "var.event_bucket_name"

    lambda_function {
        #lambda_function_arn = "${var.aws_lambda_function}"
        lambda_function_arn = [aws_lambda_function.test_lambda.function_name]
        events              = [var.event_type]
        filter_prefix       = var.prefix
        filter_suffix       = var.suffix
    }
}
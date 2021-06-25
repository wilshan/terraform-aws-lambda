# Adding S3 bucket as trigger to my lambda and giving the permissions
##################
resource "aws_s3_bucket_notification" "aws-lambda-trigger" {
bucket = var.event_bucket_name
lambda_function {
lambda_function_arn = "${aws_lambda_function.test_lambda.arn}"
events              = ["s3:ObjectCreated:*"]
filter_prefix       = "file-prefix"
filter_suffix       = "file-extension"
}
}

resource "aws_lambda_permission" "test" {
statement_id  = var.statement_id
action        = var.action
function_name = "${aws_lambda_function.test_lambda.function_name}"
principal = var.principle
source_arn = var.source_arn
}

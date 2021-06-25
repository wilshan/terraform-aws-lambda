#resource "aws_s3_bucket_notification" "lambda-trigger" {
  #  bucket = var.event_bucket_name

   # lambda_function {
     #   lambda_function_arn = var.aws_lambda_function
     #   events              = [var.event_type]
      #  filter_prefix       = var.prefix
    #   filter_suffix       = var.suffix
   # }
#}


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
statement_id  = "AllowS3Invoke"
action        = "lambda:InvokeFunction"
function_name = "${aws_lambda_function.test_lambda.function_name}"
principal = "s3.amazonaws.com"
source_arn = "arn:aws:s3:::landlingbucketlakeformation"
}

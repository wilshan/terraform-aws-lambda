# Adding Cloudwatch events as trigger to my lambda and giving the permissions
##################
resource "aws_cloudwatch_event_target" "lambda_trigger_every_five_minutes" {
    rule = "${aws_cloudwatch_event_rule.lambda_trigger_every_five_minutes.name}"
    target_id = "test_lambda"
    arn = aws_lambda_function.test_lambda.arn
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call_test_lambda" {
    statement_id = "AllowExecutionFromCloudWatch"
    action = "lambda:InvokeFunction"
    function_name = aws_lambda_function.test_lambda.function_name
    principal = "events.amazonaws.com"
    source_arn = "${aws_cloudwatch_event_rule.lambda_trigger_every_five_minutes.arn}"
}

resource "aws_lambda_function" "lf1" {
  function_name = var.function_name
  handler       = var.handler
  runtime       = var.runtime
  role          = var.role_arn
  filename      = var.filename
  memory_size   = var.memory_size
  timeout       = var.timeout

  environment {
    variables = var.environment
  }
}
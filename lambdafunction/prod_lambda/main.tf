module "lambda" {
  source = "../"  # Ensure this path is correct and points to the lambda module

  function_name = "my-lambda-function"
handler       = "index.handler"
runtime       = "nodejs14.x"
role_arn      = "arn:aws:iam::123456789012:role/lambda-execution-role"
filename      = "lambda_function_payload.zip"
memory_size   = 256
timeout       = 30
environment   = {
  ENV_VAR_1 = "value1"
  ENV_VAR_2 = "value2"
}
}
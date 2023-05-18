module "label" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  name       = var.name
  context    = var.context
}


module "lambda" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "4.18.0"
  function_name = module.label.id
  description = "get all authors"
  handler = "index.handler"
  runtime = "nodejs12.x"
  source_path = "${path.modules}/lambda_src/get-all-authors-lambda/index.js"
  
  environment_variables = {
    TABLE_NAME = var.table_author_name
  }

    attach_policy_statements = true
    policy_statements = {
        dynamodb = {
        effect    = "Allow",
        actions   = ["dynamodb:Scan"],
        resources = [var.table_author_arn]
        },
        #s3_read = {
        #effect    = "Deny",
        #actions   = ["s3:HeadObject", "s3:GetObject"],
        #resources = ["arn:aws:s3:::my-bucket/*"]
        #}
    }

  tags = module.label.tags
}
module "course" {
    source = "./modules/dynamodb/eu-central-1"
    context = module.label.context
    name = "course"
}

module "author" {
    source = "./modules/dynamodb/eu-central-1"
    context = module.label.context
    name = "author"
}

module "lambda-get-all-authors" {
  source = "./modules/dynamodb/lambda/eu-central-1"
  context = module.label.context
  name = "authors"
  table_author_name = module.author.table_name
  table_author_arn = module.author.table_arn
}

module "lpnu" {
    source = "./modules/dynamodb/eu-central-1"
    context = module.label.context
    name = "lpnu"
}

resource "aws_iam_user" "the-accounts" {
  for_each = toset(["Todd","James","Adam","Dottie"])
  name = "${module.label.id}-${each.key}"
}


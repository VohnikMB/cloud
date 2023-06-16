module "label_authors" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name
}

module "label_courses" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name_courses
}

module "label_courses_save" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name_courses_save
}

module "label_courses_get" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name_courses_get
}

module "label_courses_update" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name_courses_update
}

module "label_courses_delete" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name_courses_delete
}
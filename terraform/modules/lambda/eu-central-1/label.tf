module "label" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  name       = var.name
  context    = var.context
}

module "label_courses" {
 source   = "cloudposse/label/null"
 version  = "0.25.0"
 name       = var.name_courses
 context    = var.context
}

module "label_get_course" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name_get_course
}

module "label_save_course" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name_save_course
}


module "label_update_course" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name_update_course
}


module "label_delete_course" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  context  = var.context
  name     = var.name_delete_course
}
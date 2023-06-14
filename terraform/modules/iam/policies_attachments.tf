resource "aws_iam_role_policy_attachment" "table_courses" {
  role       = aws_iam_role.table_courses.name
  policy_arn = aws_iam_policy.table_courses.arn
}

resource "aws_iam_role_policy_attachment" "table_authors" {
  role       = aws_iam_role.table_authors.name
  policy_arn = aws_iam_policy.table_authors.arn
}
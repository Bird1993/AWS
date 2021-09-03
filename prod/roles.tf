resource "aws_iam_role" "developers" {
    name = "developers"
    assume_role_policy = file("roles.json")
}

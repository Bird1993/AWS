resource "aws_iam_policy" "s3" {
    name = "developers"
    policy = file("policy.json")
}
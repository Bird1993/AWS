resource "aws_iam_policy" "s3" {
    name = "s3_full"
    policy = file("policy.json")  
}

resource "aws_iam_policy_attachment" "developer_s3" {
    name = "developers_s3"
    roles = [aws_iam_role.developers.name]
    policy_arn = aws_iam_policy.s3.arn
  
}

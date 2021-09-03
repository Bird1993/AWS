resource "aws_iam_group" "developer" {
  name = "developers"
}

resource "aws_iam_group_policy_attachment" "developer" {
    group = aws_iam_group.developer.name
    policy_arn = aws_iam_policy.s3.arn
}


resource "aws_iam_group" "DBA" {
    name = "DBA"
}



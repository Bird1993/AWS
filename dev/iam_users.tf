resource "aws_iam_user" "bob" {
    name = "bob"
}

resource "aws_iam_user_group_membership" "developer" {
    user = aws_iam_user.bob.name
    groups = [ 
        aws_iam_group.developer.name
    ]
}


resource "aws_iam_user" "dave" {
    name = "dave"
}

resource "aws_iam_user_group_membership" "DBA" {
    user = aws_iam_user.dave.name
    groups = [ 
        aws_iam_group.DBA.name
    ]
}
data "aws_iam_policy_document" "permissions_rights" {
  statement {
    actions = [
      "s3:GetObject",
      "s3:Describe*",
      "s3:List*"
    ]
    resources = [
      "arn:aws:s3:::my-bucket-niki-1/*",
      "arn:aws:s3:::my-bucket-niki-1",
    ]
  }
}
data "aws_iam_policy_document" "assumed" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type = "AWS"
      identifiers = ["arn:aws:sts::666511280736:assumed-role/AWSReservedSSO_AWSAdministratorAccessLockedTags_39667908bb2d7467/nikolay_dimov@flutterint.com"]
    }
  }
}
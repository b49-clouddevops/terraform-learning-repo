resource "aws_eip" "sample" {
  count    = 3
  vpc      = true
}


aws_eip.sample.*.id 
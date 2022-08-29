resource "aws_eip" "sample" {
  count    = 3
  vpc      = true
}

# This is how we refer a resource in the count blok
# aws_eip.sample.*.id
# aws_eip.sample.*.id[1]
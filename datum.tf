data "aws_route_tables" "primary_vpc_route_tables" {
  vpc_id = var.primary_vpc_id

  filter {
    name   = "tag:Name"
    values = ["${var.environment}-private-${var.region}*"]
  }
}

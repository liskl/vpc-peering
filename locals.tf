locals {
  eks_route_tables         = toset(var.secondary_vpc_route_tables)
  primary_vpc_route_tables = toset(data.aws_route_tables.primary_vpc_route_tables.ids)
}

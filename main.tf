resource "aws_vpc_peering_connection" "to_primary" {
  auto_accept   = var.auto_accept
  peer_owner_id = var.account_id
  peer_vpc_id   = var.primary_vpc_id

  tags = {
    Name        = "${var.primary_vpc_name}-${var.secondary_vpc_name}"
    Environment = var.primary_vpc_name
  }

  vpc_id = var.secondary_vpc_id
}

resource "aws_route" "to_primary" {
  for_each = local.eks_route_tables

  route_table_id            = each.value
  destination_cidr_block    = var.primary_vpc_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.to_primary.id
}

resource "aws_route" "to_secondary" {
  for_each = local.primary_vpc_route_tables

  route_table_id            = each.value
  destination_cidr_block    = var.secondary_vpc_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.to_primary.id
}

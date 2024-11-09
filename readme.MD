# Terraform AWS VPC module customized

This module is going to creating the following resource. for HA we are going to get first 2 AZ

* VPC
* Internet Gateway associated with VPC
* 2 public subnets
* 2 private subnets
* 2 database subnets
* Database subnet group
* EIP
* NAT Gateway
* Public route table
* Private route table
* database route table
* Routers
* Route table associations with subnets
* Peering with default VPC (if Required)
* Peering routes in acceptor and requestor route tables

# Inputs
project_name (Mandatory): user must supply thier project name.
environment (Mandatory): user must supply thier environment name.
vpc_cidr (Mandatory): user must supply their VPC CIDR
enable_dns_hostname (Optional). default is true.
common_tags (Optional): default is empty. user can supply tags in map(string) format.
vpc_tags (Optinal): default is empty.user can supply tags in map(string) format.
igw_tags (Optional): default is empty.user can supply tags in map(string) format.
public_subnet_cidrs (Mandatory): user must supply only 2 valid public subnet CIDR.
public_subnet_tags (Optional): default is empty. user can supply tags in list(string) format. 

private_subnet_cidrs (Mandatory): user must supply only 2 valid private subnet CIDR.
private_subnet_tags (Optional): default is empty. user can supply tags in list(string)format.

database_subnet_cidrs (Mandatory): user must supply only 2 valid database subnet CIDR.
database_subnet_tags (Optional): default is empty. user can supply tags in list(string)format.

db_subnet_group_tags (Optional) default is empty. user can supply tags in map(string) format.
nat_gateway_tags (Optional) default is empty. user can supply tags in map(string) format.

public_route_table_tags (Optional) default is empty. user can supply tags in map(string) format.

private_route_table_tags (Optional) default is empty. user can supply tags in map(string) format.

database_route_table_tags (Optional) default is empty. user can supply tags in map(string) format.

is_peering_required (Optional) default to false.

vpc_peering_tags (Optional) default is empty. user can supply tags in map(string) format.

# Outputs
* vpc_id: VPC ID created.
* public_subnet_ids: list of 2 public subnet ids created.
* private_subnet_ids: list of 2 private subnet ids created.
* database_subnet_ids: list of 2 database subnet ids created.

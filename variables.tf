variable "project_name"{
    type = string
}

variable "environment"{
    type = string
}

variable "vpc_cidr"{
    type = string
   
}

variable "enable_dns_hostnames"{
    default = true
}

variable "common_tags"{
    default = {
        Terraform = "true"
      
    }
}

variable "vpc_tags"{
    default = {}
}

variable "igw_tags"{
    default = {}
}

variable "public_subnet_cidrs"{
    type = list
    validation {
        condition     = length(var.public_subnet_cidrs) == 2
        error_message = "Please provid 2 valid public subnets CIDRS"
    }
}

variable "public_subnet_tags"{
    default = {}
   
}


variable "private_subnet_cidrs"{
    type = list
    validation {
        condition     = length(var.private_subnet_cidrs) == 2
        error_message = "Please provid 2 valid private subnets CIDRS"
    }
}

variable "private_subnet_tags"{
    default = {}
   
}


variable "database_subnet_cidrs"{
    type = list
    validation {
        condition     = length(var.database_subnet_cidrs) == 2
        error_message = "Please provid 2 valid database subnets CIDRS"
    }
}

variable "database_subnet_tags"{
    default = {}
   
}

variable "db_subnet_group_tags"{
    default = {}
}

variable "nat_gateway_tags"{
    default = {}
}

variable "public_route_table"{
    default = {}
}


variable "private_route_table"{
    default = {}
}


variable "database_route_table"{
    default = {}
}

# Create peering to vpc's

variable "is_peering_required"{
    type = bool
    default = false
}

variable "vpc_peering_tags"{
    default = {}
}

terraform {
  source = "git::git@github.com:RuchiDhal/infra-modules.git/aws-vpc"
}

include {
  path = find_in_parent_folders()
}


inputs = {
  vpc = {
    name                    = "vpc-infra-live"
    cidr_block              = "10.100.0.0/16"
    nat_gateway_subnet_name = "public-vpc-live-a"

    private_subnets = {
      private-a = {
        cidr_block        = "10.100.0.0/24"
        availability_zone = "eu-west-1a"
      }
      private-b = {
        cidr_block        = "10.100.1.0/24"
        availability_zone = "eu-west-1b"
      }
      private-c = {
        cidr_block        = "10.100.2.0/24"
        availability_zone = "eu-west-1c"
      }
    }

    public_subnets = {
      public-a = {
        cidr_block        = "10.100.3.0/24"
        availability_zone = "eu-west-1a"
      }
      public-b = {
        cidr_block        = "10.100.4.0/24"
        availability_zone = "eu-west-1b"
      }
      public-c = {
        cidr_block        = "10.100.5.0/24"
        availability_zone = "eu-west-1c"
      }
    }
  }
}
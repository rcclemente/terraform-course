# Internet VPC
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    Name = "main"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

# Subnets
resource "aws_subnet" "main-public-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "main-public-1"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_subnet" "main-public-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "main-public-2"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_subnet" "main-public-3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1c"

  tags = {
    Name = "main-public-3"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_subnet" "main-private-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "main-private-1"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_subnet" "main-private-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.5.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "main-private-2"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_subnet" "main-private-3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.6.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1c"

  tags = {
    Name = "main-private-3"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

# Internet GW
resource "aws_internet_gateway" "main-gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

# route tables
resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-gw.id
<<<<<<< HEAD
<<<<<<< HEAD
  }

  tags = {
    Name = "main-public-1"
  }
}
=======
  ***REMOVED***

  tags = {
    Name = "main-public-1"
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }

  tags = {
    Name = "main-public-1"
  }
}
>>>>>>> 78c7374... update_vars_image

# route associations public
resource "aws_route_table_association" "main-public-1-a" {
  subnet_id      = aws_subnet.main-public-1.id
  route_table_id = aws_route_table.main-public.id
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_route_table_association" "main-public-2-a" {
  subnet_id      = aws_subnet.main-public-2.id
  route_table_id = aws_route_table.main-public.id
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_route_table_association" "main-public-3-a" {
  subnet_id      = aws_subnet.main-public-3.id
  route_table_id = aws_route_table.main-public.id
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image


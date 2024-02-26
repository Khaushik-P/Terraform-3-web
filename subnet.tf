resource "aws_subnet" "public-subnet-1"{
    vpc_id="${aws_vpc.demovpc.id}"
    cidr_block="${var.subnet_cidr}"
    map_public_ip_on_launch=true
    availability_zone="us-east-1a"

    tags={
        Name="Web subnet 1"
    }
}

resource "aws_subnet""public-subnet-2"{
    vpc_id="${aws_vpc.demovpc.id}"
    cidr_block="${var.subnet1_cidr}"
    map_public_ip_on_launch=true
    availability_zone="us-east-1b"

    tags={
        Name="Web subnet 2"
    }
}

resource "aws_subnet""application-subnet-1"{
    vpc_id="${aws_vpc.demovpc.id}"
    cidr_block="${var.subnet2_cidr}"
    map_public_ip_on_launch=false
    availability_zone="us-east-1a"

    tags={
        Name="Applcation subnet 1"
    }
}

resource "aws_subnet""application-subet-2"{
    vpc_id="${aws_vpc.demovpc.id}"
    cidr_block="${var.subnet3_cidr}"
    map_public_ip_on_launch=false
    availability_zone="us-east-1b"

    tags={
        Name="Application subnet 2"
    }
}

resource "aws_subnet""database-subnet-1"{
    vpc_id="${aws_vpc.demovpc.id}"
    cidr_block="${var.subnet4_cidr}"
    availability_zone="us-east-1a"

    tags={
        Name="Database subnet 1"
    }
}


resource "aws_subnet""database-subnet-2"{
    vpc_id="${aws_vpc.demovpc.id}"
    cidr_block="${var.subnet5_cidr}"
    availability_zone="us-east-1b"

    tags={
        Name="Database subnet 2"
    }
}



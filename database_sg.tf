resource"aws_security_group""database-sg"{
    vpc_id="${aws_vpc.demovpc.id}"


    ingress{
        from_port=3306
        to_port=3306
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }
     ingress{
        from_port=32768
        to_port=65535
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
     }
    egress{
        from_port=0
        to_port=0
        protocol="-1"
        cidr_blocks=["0.0.0.0/0"]
}

tags={
    Name="database-sg"
}
}
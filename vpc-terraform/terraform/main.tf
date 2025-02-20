module "dev" {
  source = "./infrastructure"
  env = "dev"

  vpc_config = {
      cidr = "10.0.0.0/16"
      name = "my-vpc"  
    }

  subnet_config = [
      {
        name = "subnet-1"
        cidr = "10.0.1.0/24"
        az = "us-east-2a"
      },
      {
        name = "subnet-2"
        cidr = "10.0.2.0/24"
        az = "us-east-2b"
      },
      {
        name = "subnet-3"
        cidr = "10.0.3.0/24"
        az = "us-east-2b"
      }]

  ec2_config = [
    {
      name = "dev-1"
      ami = "ami-0cb91c7de36eed2cb"
      instance_type = "t2.micro"
      storage_size = 8
    },
    {
      name = "dev-2"
      ami = "ami-0cb91c7de36eed2cb"
      instance_type = "t2.micro"
      storage_size = 8
    },
    {
      name = "dev-3"
      ami = "ami-0cb91c7de36eed2cb"
      instance_type = "t2.micro"
      storage_size = 8
    }] 
}

output "dev_infra_ec2_public_ips" {
  value = module.dev.ec2_public_ips
}



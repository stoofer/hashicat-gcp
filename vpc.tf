module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"
    
    network_name = "stuart-network"

    project_id = var.project

    subnets = [
            {
                subnet_name   = "stuart-subnet"
                subnet_ip     = "10.100.10.0/24"
                subnet_region = var.region
            }
        ]
}
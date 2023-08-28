module "ec2_in_two_regions" {
    source = "../"
}

output "publicip_use1" {
    value = module.ec2_in_two_regions.publicip_use1
}

output "publicip_usw1" {
    value = module.ec2_in_two_regions.publicip_usw1
}
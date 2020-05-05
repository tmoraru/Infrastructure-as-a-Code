environment                     =   	"oregon"
region                          =        "us-west-2"

#Chose A-Z to create subnets
az1                  =       "us-west-2a"
az2                  =       "us-west-2b"
az3                  =       "us-west-2c"


 #provite region for VPCs

# Below code is used to set backend only

s3_bucket                       =	"tatiana-state-bucket"

s3_folder_region                =	"us-east-1"
#this is used for VPC cidr block
cidr_block = "10.0.0.0/16"

#this is used for public subnets
cidr_block1_public = "10.0.1.0/24"
cidr_block2_public = "10.0.2.0/24"
cidr_block3_public = "10.0.3.0/24"

#this is used for private subnets 
cidr_block1_private = "10.0.101.0/24"
cidr_block2_private= "10.0.102.0/24"
cidr_block3_private= "10.0.103.0/24"
key_name = "tanea_bastion"


# Please do not change below

s3_folder_project               =   	"project"

s3_folder_type                  =   	"tools"

s3_tfstate_file                 =   	"project.tfstate"

# Softcoded tags
tags = {
    Environment = "Dev"
    Department = "IT"
    Team = "Infrastructure"
    Created_by = "Tatiana"
    
}

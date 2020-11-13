# Where is created environment
environment                     =   	"virginia"
region                          =        "us-east-1"

# Instance details
ami_instance  = "ami-0947d2ba12ee1ff75"
instance_type_1 = "t2.micro"


#VPC cidr_block
vpc_cidr  = "10.0.0.0/16"

# cidr_block for public subnets
cidr_block_pub1 = "10.0.1.0/24"
cidr_block_pub2 = "10.0.2.0/24"
cidr_block_pub3 = "10.0.3.0/24"

#cidr block for private subnets
cidr_block_priv1 = "10.0.11.0/24"
cidr_block_priv2 = "10.0.12.0/24"
cidr_block_priv3 = "10.0.13.0/24"

#Chose A-Z to create subnets
az1                  =       "us-east-1a"
az2                  =       "us-east-1b"
az3                  =       "us-east-1c"

# Below code is used to set backend only

s3_bucket                       =	"tatiana-testing-bucket"

s3_folder_project               =   	"project"

s3_folder_type                  =   	"tools"

s3_tfstate_file                 =   	"project.tfstate"
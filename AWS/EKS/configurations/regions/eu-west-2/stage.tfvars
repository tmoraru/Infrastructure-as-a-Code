environment = "stage"
region = "eu-west-2"
s3_bucket = "taniusha-bucket-eks"                   #Will be used to set backend.tf
s3_folder_project = "application"                    #Will be used to set backend.tf
s3_folder_region = "us-east-1"                       #Will be used to set backend.tf
s3_folder_type = "state"                             #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_london.json"      #Will be used to set backend.tf
vpc_id = "vpc-0d1c65f797c0d7a8f"
subnet1 = "subnet-0bad1a8b68b6b4db2"
subnet2 = "subnet-0a1009e58ab6171e7"
subnet3 = "subnet-0e5807e078be9b77a"


cluster_name = "london-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"
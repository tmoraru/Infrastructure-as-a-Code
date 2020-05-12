environment = "qa"
region = "us-east-2"
s3_bucket = "taniusha-bucket-eks"                   #Will be used to set backend.tf
s3_folder_project = "application"                    #Will be used to set backend.tf
s3_folder_region = "us-east-1"                       #Will be used to set backend.tf
s3_folder_type = "state"                             #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_ohio.json"      #Will be used to set backend.tf
vpc_id = "vpc-0b911bbab71385784"
subnet1 = "subnet-0ccc9f91b9a0cd9a5"
subnet2 = "subnet-04ea553394fed21fb"
subnet3 = "subnet-00ff35ff2fdd324ba"


cluster_name = "ohio-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"
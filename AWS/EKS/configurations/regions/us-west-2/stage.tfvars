environment = "stage"
region = "us-west-2"
s3_bucket = "taniusha-bucket-eks"                   #Will be used to set backend.tf
s3_folder_project = "application"                    #Will be used to set backend.tf
s3_folder_region = "us-west-2"                       #Will be used to set backend.tf
s3_folder_type = "state"                             #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_oregon.json"      #Will be used to set backend.tf
vpc_id = "vpc-0e23b9d5ec9623c7e"
subnet1 = "subnet-05214452bb558d244"
subnet2 = "subnet-08b588ce024fe12e5"
subnet3 = "subnet-0c1e0c27439e9c5a4"


cluster_name = "oregon-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"
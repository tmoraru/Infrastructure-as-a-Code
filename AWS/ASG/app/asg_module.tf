# create app1 using the module that i wanna create
module "app1"{ 
    source = "./module"
    region = "us-east-1"
}

module "wordpress"{ 
    source = "./module"
    region = "us-east-1"
}

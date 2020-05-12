terraform { 
backend "s3" { 
bucket = "taniusha-bucket-eks" 
key = "application/us-east-1/state/qa/infrastructure.tfstate_ohio.json" 
region = "us-east-1" 
  } 
} 

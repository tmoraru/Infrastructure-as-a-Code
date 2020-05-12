terraform { 
backend "s3" { 
bucket = "taniusha-bucket-eks" 
key = "application/us-east-1/state/stage/infrastructure.tfstate_london.json" 
region = "us-east-1" 
  } 
} 

terraform {
  backend "s3" {
    bucket = "statebucketdeploy"
    key    = "terraform.tfstate"
    use_lockfile = true  #s3 native locking process to prevent concurrent state modifications
    region = "us-east-1"
  }
}

#State lockfile : Terraform acquires a state lock to protect the state from being written by multiple users at the same time. Please resolve the issue above and try again
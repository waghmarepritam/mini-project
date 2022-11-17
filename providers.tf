provider "aws" {
  profile = "tf-admin"
  region  = "us-east-2"
}

provider "aws" {
  alias = "east-1"
  profile = "tf-admin"
  region  = "us-east-1"
}
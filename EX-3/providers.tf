provider "aws" {
    region = "us-east-1"
}

provider "aws" {
    alias = "usw1"
    region = "us-west-1"
}
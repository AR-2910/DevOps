terraform {
  backend "s3" {
    bucket = "my-remote-backend-project"
    key    = "abhi/terraform.tfstate"
    region = "us-east-1"
  }
}

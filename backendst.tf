terraform {
  backend "s3" {
    bucket         = "myeks-statefile"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
  }
}
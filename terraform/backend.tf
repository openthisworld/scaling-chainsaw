terraform {
  backend "s3" {
    bucket         = "openthisworld-dev-state"
    key            = "dev/statefile"
    region         = "us-east-1"
    encrypt        = true
  }
}

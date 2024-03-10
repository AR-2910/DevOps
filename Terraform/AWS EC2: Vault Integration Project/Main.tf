provider "aws" {
   region = "us-east-1"
 }

provider "vault" {
  address = "http://<public_ip>:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "<insert vault role_id>"
      secret_id = "<insert vault secret_id>"
    }
  }

 }

data "vault_kv_secret_v2" "myexample" { 
  mount = "kv" #your mount name
  name  = "test-secret" #your secret name
}

resource "aws_instance" "myexample_ec2" { 
  ami = "ami-06aa3f7caf3a30282" 
  instance_type = "t2.micro"
  tags = {
    "secret" = data.vault_kv_secret_v2.myexample.data_json 
  }
}

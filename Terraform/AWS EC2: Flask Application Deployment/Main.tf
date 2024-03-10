provider "aws" {
  region = "us-east-1"  
}

resource "aws_instance" "server" {
  ami                    = "ami-06aa3f7caf3a30282" 
  instance_type          = "t2.micro"
  key_name               = "server_key"  

  connection {
    type        = "ssh"
    user        = "ubuntu"  
    private_key = file("server_key.pem")  
    host        = aws_instance.server.public_ip
  }

  provisioner "file" {
    source      = "app.py"  
    destination = "/home/ubuntu/app.py"  
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Hello from the remote instance'",
      "sudo apt update -y", 
      "sudo apt-get install -y python3-pip",  
      "cd /home/ubuntu",
      "sudo pip3 install flask",
      "sudo python3 app.py &",
    ]
  }
}

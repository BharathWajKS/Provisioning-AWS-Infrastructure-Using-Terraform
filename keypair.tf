/*
Generate a Key Pair to enable SSH to the EC2 instances 
(Either using tools such as ssh-keygen/openssl or 
generate and download a key using AWS KeyPair from the 
console). 

Additionally Key Pair can also be generated using terraform 
code. 
*/
resource "aws_key_pair" "terraform-lab" {
  key_name   = "${var.ec2_instance_name}_key_pair"
  public_key = file(var.ssh_pubkey_file)
}
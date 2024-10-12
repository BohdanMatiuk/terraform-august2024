provider aws {
    region = "us-east-2"
} 
resource "aws_key_pair" "deployer" {
  key_name   = "bastion_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCpRhJAxN/nd3TaNtSwLJ+7slwsvNIrdM0FVhNxuAiQAf9c55VIv+/SQ7w87ByQMx7V5SEnLijDbap18wbv1TH4gME70SvRQ5zTpeB8ip7AkEkUh0gHEvo6OTLi7TBnJgLI9eq6YtvSm/Fy/j4noXlQ8Lb/TIaAZiK1qJlNzLt5shbK2yz44gO7n/A6Ly4LaUSeYdM/ffJ47XfltaXKICUrwbuP/76I7ryWvCwR2x+WjJeP7OurV2NulfypDLqNNK27jS6cbZ56rdjSPbETieBtyL35guI+dz0fEuzj9/qZpNU8MGHGuChKptbpdvMRSVN2iqFczN2Jhn5XBg+cxKT30JBBXEk2QNn9TBegzl1freumHPrrn+xmxWMGG3YQvL3TfXKf4/OqMEQwYRJICcJtNvfJazxLI4rHd3KTS9HL/MPJGTqV9JAGSAX5Ewi2dqfaayWJtp9h6EyNfry+5abwjmt705d63t+5xUCY/DX8vnGSTA4ZWHnbEPTl430LuJc= ec2-user@ip-172-31-41-91.eu-central-1.compute.internal"
}
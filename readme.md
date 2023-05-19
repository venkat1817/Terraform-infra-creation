#create a instance usinf terraform go to local.
#mkdir sourcecode---cd sourcecode
#mkdir iac ---cd iac 
#mkdir ec2 ---cd ec2
#commands
#terraform init,
#terraform.exe plan -var-file=dev.tfvars
#terraform.exe apply -var-file=dev.tfvars
#terraform plan,
#terraform apply,
#ls -ltr,
#aws sts get-caller-identity,
#cd .aws,
#cat credentials,
#aws configure

git-to-rcm push commands-and terraform code
-------------------------------------------
1. git init
2. git filter-branch --tree-filter 'rm -f .terraform/providers/registry.terraform.io/hashicorp/aws/4.67.0/windows_386/terraform-provider-aws_v4.67.0_x5.exe' HEAD
3.git add .
4.git add .
5.git commit -m "Remove large file"
6.git lfs track "sourcecode/ica/ec2/terraform.tfstate"
7.git add .gitattributes
8.git commit -m "Update .gitattributes"
9.git push origin main




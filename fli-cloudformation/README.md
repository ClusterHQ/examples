
# How to use this repository

1. Go to https://console.aws.amazon.com/cloudformation

2. Click "Create Stack"

3. Choose "Upload a template", and choose the `fli-CloudFormation-Ubuntu16.04` template from this repo.

4. Click "Next"

5. Choose your SSH Key and give your Stack a name.

6. "Create" the Stack.

7. When finished, look for the DNS name in "Outputs"

```
laptop$ ssh -i ~/yourkey.pem ubunutu@dns-name-from-outputs
Welcome to Ubuntu 16.04.1 LTS (GNU/Linux 4.4.0-31-generic x86_64)

ubuntu@ec2node$ sudo su
root@ec2node$ fli setup -z chq
root@ec2node$ fli setup config -t /root/your.token
root@ec2node$ fli init My-First-Volumeset
```

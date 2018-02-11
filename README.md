# AWS EC2 Export Tags as Environment Variables

This template exports the resource's tags as environment variables.

In order to create the stack, you need to have `aws cli` installed and an EC2 keypair available.

Deploy with:

```Bash
# e.g. ./deploy my-environment-stack my-ec2-keypair-name
sh ./deploy.sh <stack-name> <keypair-name>
```

Or run the command yourself:

```Bash
aws cloudformation create-stack --template-body file://template.yml \
                                --stack-name "my-stack-name"
                                --parameters ParameterKey=InstanceKeyNameParameter,ParameterValue=my-ec2-keypair-name
                                --capabilities CAPABILITY_NAMED_IAM
```

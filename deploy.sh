# Check arguments
stack_name=${1:?"You must provide a stack name as the first argument"}
key_name=${2:?"You must provide a key name as the second argument"}

# Create stack
aws cloudformation create-stack --template-body file://template.yml \
                                --stack-name "$stack_name" \
                                --parameters ParameterKey=InstanceKeyNameParameter,ParameterValue=$key_name \
                                --capabilities CAPABILITY_NAMED_IAM
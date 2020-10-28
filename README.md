# Interview Starter

This is to provide a foundation which interview candidates can build terraform projects on top of. 

### Init:
Without Role Assumption:
```
terraform init -backend-config=./init-tfvars/dev.tfvars 
```

With MFA Role Assumption:
```
awsudo -u \<profile\> terraform init -backend-config=./init-tfvars/dev.tfvars 
```

### Apply:
Without Role Assumption:
```
terraform apply -var-file ./apply-tfvars/dev.tfvars
```

With MFA Role Assumption:
```
awsudo -u \<profile\> terraform apply -var-file ./apply-tfvars/dev.tfvars
```

## Tools to Use

- awsudo
- tfenv (if using multiple versions of terraform)

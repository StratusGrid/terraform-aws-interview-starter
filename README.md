<!-- BEGIN_TF_DOCS -->
<p align="center">
  <img src="https://github.com/StratusGrid/terraform-readme-template/blob/main/header/stratusgrid-logo-smaller.jpg?raw=true" />
  <p align="center">
    <a href="https://stratusgrid.com/book-a-consultation">Contact Us</a> |
    <a href="https://stratusgrid.com/cloud-cost-optimization-dashboard">Stratusphere FinOps</a> |
    <a href="https://stratusgrid.com">StratusGrid Home</a> |
    <a href="https://stratusgrid.com/blog">Blog</a>
  </p>
</p>

# Interview Starter

This is to provide a foundation which interview candidates can build terraform projects on top of.

## Init:
Without Role Assumption:
```hcl
terraform init -backend-config=./init-tfvars/dev.tfvars
```

With MFA Role Assumption:
```hcl
awsudo -u \<profile\> terraform init -backend-config=./init-tfvars/dev.tfvars 
```

## Apply:
Without Role Assumption:
```hcl
terraform apply -var-file ./apply-tfvars/dev.tfvars
```

With MFA Role Assumption:
```hcl
awsudo -u \<profile\> terraform apply -var-file ./apply-tfvars/dev.tfvars
```

## Tools to use
- awsudo
- tfenv (if using multiple versions of terraform)


---
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.44.0 |
## Resources

| Name | Type |
|------|------|
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | AWS access key | `string` | `""` | no |
| <a name="input_account_numbers"></a> [account\_numbers](#input\_account\_numbers) | Whitelisted account numbers to apply terraform code in. Can apply in any if left blank. | `list(string)` | `[]` | no |
| <a name="input_append_name_suffix"></a> [append\_name\_suffix](#input\_append\_name\_suffix) | String to append to the name\_suffix used on object names. This is optional, so start with dash if using like so: -mysuffix. This will result in prefix-objectname-env-mysuffix | `string` | `""` | no |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | AWS Profile credentials to use | `string` | `""` | no |
| <a name="input_developer"></a> [developer](#input\_developer) | name of developer who has written this code | `string` | n/a | yes |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | Environment name string to be used for decisions and name generation. Appended to name\_suffix to create full\_suffix | `string` | n/a | yes |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | String to use as prefix on object names | `string` | n/a | yes |
| <a name="input_override_name_suffix"></a> [override\_name\_suffix](#input\_override\_name\_suffix) | String to completely override the name\_suffix | `string` | `""` | no |
| <a name="input_prepend_name_suffix"></a> [prepend\_name\_suffix](#input\_prepend\_name\_suffix) | String to prepend to the name\_suffix used on object names. This is optional, so start with dash if using like so: -mysuffix. This will result in prefix-objectname-mysuffix-env | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS Region to target | `string` | n/a | yes |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | AWS secret key | `string` | `""` | no |
| <a name="input_source_repo"></a> [source\_repo](#input\_source\_repo) | name of repo which holds this code | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | MFA Token retrieved with sts get-session-token | `string` | `""` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | Account which terraform was run on |
| <a name="output_aws_region"></a> [aws\_region](#output\_aws\_region) | AWS region |
| <a name="output_common_tags"></a> [common\_tags](#output\_common\_tags) | tags which should be applied to all taggable objects |
| <a name="output_name_prefix"></a> [name\_prefix](#output\_name\_prefix) | string to prepend to all resource names |
| <a name="output_name_suffix"></a> [name\_suffix](#output\_name\_suffix) | string to append to all resource names |
---
Note, manual changes to the README will be overwritten when the documentation is updated. To update the documentation, run `terraform-docs -c .config/.terraform-docs.yml`
<!-- END_TF_DOCS -->
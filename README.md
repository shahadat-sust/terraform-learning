# terraform-learning

## Terraform commands

To initialize terraform -

```
terraform init
```

To open terraform console -

```
terraform console
```

To see the terraform plan, before executing apply the changes -

```
terraform plan
```

To apply the changes -

```
terraform apply
```

To destory the changes -

```
terraform destroy
```

To keep the plan about then changes in separate file -

```
terraform plan -out changes_1.terraform
```

To apply the changes from that file-

```
terraform apply changes_1.terraform
rm changes_1.terraform
```
To fetch external module -

```
terraform get
```

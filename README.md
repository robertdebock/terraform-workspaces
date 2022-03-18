# Workspaces

This repository can be used to demonstrate the use of workspace.

## default

Just run `terraform apply`. You are using the namespace `default`. The output should be:

```text
amount_of_machines = 2
workspace = "default"
```

## development

Create a workspace called `development`:

```shell
terraform workspace new development
```

The `terraform apply` output should be:

```text
amount_of_machines = 1
workspace = "development"
```

## production

Create a workspace called `production`:

```shell
terraform workspace new production
```

The `terraform apply` output should be:

```text
amount_of_machines = 4
workspace = "production"
```

## non-existing

Create a workspace called `acceptance`:

```shell
terraform workspace new acceptance
```

As we have not defined `acceptance` in `locals.tf`, an error will be displayed:

```text
│ Error: Invalid index
│
│   on locals.tf line 9, in locals:
│    9:   amount_of_machines = local._amount_of_machines[terraform.workspace]
│     ├────────────────
│     │ local._amount_of_machines is object with 3 attributes
│     │ terraform.workspace is "acceptance"
│
│ The given key does not identify an element in this collection value.
```

## back to default|production|development

List the workspaces:

```shell
$ terraform workspace list
* default
  acceptance
  development
  production
```

Select a workspace:

```shell
$ terraform workspace select default
```

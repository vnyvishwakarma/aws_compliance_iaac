## terraform-compliance

terraform-compliance is a lightweight, security and compliance focused test framework against terraform to enable negative testing capability for your infrastructure-as-code.

>Note : For more information, please refer https://terraform-compliance.com/

<br>


## Installation


```sh
pip install terraform-compliance
```

> It requires `Python 3.x` to run properly. Installation is pretty standard like any `Python package`. For more info please refer : - https://terraform-compliance.com/pages/installation/pip.html

<br>

## Usage

In a typical setup terraform-compliance may require two paramters ***plan file*** and ***feature file path***.

How to get terraform plan file, below are the steps : 

```sh
terraform plan -out=plan.out
terraform show -json plan.out > plan.out.json
```

Once you have terraform plan read you can use existing feature file or create your own directory that can contain your feature files.

```sh
terraform-compliance -p plan.out.json -f git:ssh://github.com/user/repo.git//directory?ref=v1.0.0

OR

terraform-compliance -p plan.out.json -f /<path of feature file>
```
// The terraform.tfvars file is used to define the modules variables attributes value.

storage-name = "bmwsales"
replication-type = "ZRS"
tags = {
  "environement" = "dev"
  "created" = "kunal yeole"
}

container-name = "january2026sales"

blob-name = "salesdata"
blob-source = "path-of-file(remove original path for safety)"

container-name2 = "february2026sales"
blob-name2 = "salesdata"
blob-source2 = "path-of-file"


storage-name2 = "mercedezbenzsales"
replication-type2 = "LRS"
tags2 = {
  "environment" = "prod"
  "created" = "kunal yeole"
}
container-name3 = "january2026sales"
blob-name3 = "salesdata"
blob-source3 = "C:/Users/kunal.rajendra.yeole/Documents/Others/Python/functions.py"
blob-name4 = "salesdata2"
blob-source4 = "C:/Users/kunal.rajendra.yeole/Documents/Others/Python/Tuples.py"
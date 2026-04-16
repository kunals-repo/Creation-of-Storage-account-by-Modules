

// This variable.tf file is created to defined the modules varaibles - name , types , descriptions.
// Organize them properly.


variable "storage-name" {
    type = string
}
variable "replication-type" {
    type = string
}
variable "tags" {
    type = map(string)
}



variable "container-name" {
    type = string
}
variable "blob-name" {
    type = string
}
variable "blob-source" {
    type = string
}



variable "container-name2" {
    type = string
    description = "This variable is created for Container 2 creation."
}
variable "blob-name2" {
    type = string
    description = "This variable is created for blob2 creation"
}
variable "blob-source2" {
    type = string
    description = "This variable is created for blob2 creation"
}



variable "storage-name2" {
    type = string
    description = "This variable created for storage acct 2 name"
}
variable "replication-type2" {
    type = string
    description = "This variable created for storage acct 2 replication-type"
}
variable "tags2" {
    type = map(string)
    description = "This variable created for storage acct 2 tags-name"
}



variable "container-name3" {
    type = string
    description = "This variable is created for Container 3 creation."
}
variable "blob-name3" {
    type = string
    description = "This variable is created for blob3 creation"
}
variable "blob-source3" {
    type = string
    description = "This variable is created for blob3 creation"
}



variable "blob-name4" {
    type = string
    description = "This variable is created for blob4 creation"
}
variable "blob-source4" {
    type = string
    description = "This variable is created for blob4 creation"
}
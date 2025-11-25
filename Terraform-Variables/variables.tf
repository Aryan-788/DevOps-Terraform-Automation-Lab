variable "filename" {
        default = "/home/ubuntu/terraform-variable/automated.txt"

}

variable "content" {
        default = "This is a Auto generated file from variable"
}

variable "devops_training" {

}

variable "content_map" {
        type = map
        default = {
                "content1" = "This is content 1"
                "content2" = "this is content 2"
        }
}

resource "local_file" "devops" {
        filename = "/home/ubuntu/terraform-variable/devops_test.txt"
        content = "This is sample devops test file"

}


resource "local_file" "devops-variable" {
        filename = var.filename
        content = var.content
}

resource "local_file" "devops-map" {
        filename = "/home/ubuntu/terraform-variable/map_example.txt"
        content = var.content_map["content1"]

}

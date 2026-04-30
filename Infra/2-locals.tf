resource "local_file" "ThaiFood" {
  filename = "${path.module}/ThaiFood.txt"
  content  = "My favorite food is Basil Fried Rice."

}
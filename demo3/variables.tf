variable "accounts" {
  type = map(any)
  default = {
    "item1" = {
      name = "test1"
      sku  = "Basic"
    }
    "item2" = {
      name = "test2"
      sku  = "Basic"
    }
  }
}

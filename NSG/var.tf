variable "nsg" {}
variable "rule" {
    default = null
    type = map(object({
        name = string
        port = string
        priority = string
        n = string
        ds = optional(string)
    }))
}

locals {
  spoke_root_url = format("https://%s.%s", var.spoke_org_name, var.spoke_base_url)
}
[1mdiff --git a/terraform/security-rules.tf b/terraform/security-rules.tf[m
[1mindex 9ce081d..6f06393 100644[m
[1m--- a/terraform/security-rules.tf[m
[1m+++ b/terraform/security-rules.tf[m
[36m@@ -8,27 +8,18 @@[m [mresource "ibm_is_security_group_rule" "outbound_all" {[m
 }[m
 [m
 [m
[31m-resource "ibm_is_security_group_rule" "ping_from_subnet1" {[m
[32m+[m[32mresource "ibm_is_security_group_rule" "ping_from_anywhere" {[m
   group      = ibm_is_security_group.lab.id[m
   direction  = "inbound"[m
   ip_version = "ipv4"[m
   protocol   = "icmp"[m
[31m-  remote     = var.subnet1_cidr[m
[32m+[m[32m  remote     = "0.0.0.0/0"[m
   type       = 8[m
   code       = 0[m
 [m
 }[m
 [m
[31m-resource "ibm_is_security_group_rule" "ping_from_subnet2" {[m
[31m-  group      = ibm_is_security_group.lab.id[m
[31m-  direction  = "inbound"[m
[31m-  ip_version = "ipv4"[m
[31m-  protocol   = "icmp"[m
[31m-  remote     = var.subnet2_cidr[m
[31m-  type       = 8[m
[31m-  code       = 0[m
 [m
[31m-}[m
 [m
 resource "ibm_is_security_group_rule" "ssh_from_admin" {[m
   group      = ibm_is_security_group.lab.id[m

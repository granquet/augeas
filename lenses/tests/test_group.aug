module Test_group =

let conf = "bin:x:2:
audio:x:29:joe
avahi-autoipd:x:113:bill,martha
"

test Group.lns get conf =
   { "bin"
     { "password" = "x" }
     { "gid" = "2" } }
   { "audio"
     { "password" = "x" }
     { "gid" = "29" }
     { "user" = "joe" } }
   { "avahi-autoipd"
     { "password" = "x" }
     { "gid" = "113" }
     { "user" = "bill"}
     { "user" = "martha"} }

(* Password field can be empty *)
test Group.lns get "root::0:root\n" =
  { "root"
    { "password" = "" }
    { "gid" = "0" }
    { "user" = "root" } }

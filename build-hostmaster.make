; Aegir Hostmaster build makefile
;

api = 2
core = 6.x

; BOA-2.3.0

projects[pressflow][type] = "core"
projects[pressflow][download][type] = "get"
projects[pressflow][download][url] = "http://files.aegir.cc/core/pressflow-6.33.1.tar.gz"

includes[hostmaster] = "drupal-org.make"

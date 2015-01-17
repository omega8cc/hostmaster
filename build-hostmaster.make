; Aegir Hostmaster build makefile
;

api = 2
core = 6.x

projects[pressflow][type] = "core"
projects[pressflow][download][type] = "get"
projects[pressflow][download][url] = "http://files.aegir.cc/core/pressflow-6.34.1.tar.gz"

includes[hostmaster] = "drupal-org.make"

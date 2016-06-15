; Aegir Hostmaster build makefile
;

core = 7.x
api = 2

projects[drupal][type] = "core"
projects[drupal][download][type] = "get"
projects[drupal][download][url] = "http://files.aegir.cc/core/drupal-7.44.1.tar.gz"

includes[hostmaster] = "drupal-org.make"

; Aegir Hostmaster main makefile
;

core = 7.x
api = 2

includes[hostmaster] = "drupal-org.make"

; Aegir Core

; https://ftp.drupal.org/files/projects/eldir-7.x-3.2.tar.gz
projects[eldir][download][type] = "copy"
projects[eldir][download][url] = "/opt/tmp/make_local/eldir"

; https://ftp.drupal.org/files/projects/hosting-7.x-3.2.tar.gz
projects[hosting][download][type] = "copy"
projects[hosting][download][url] = "/opt/tmp/make_local/hosting"

; Aegir Golden

; https://ftp.drupal.org/files/projects/aegir_objects-7.x-3.1.tar.gz
projects[aegir_objects][download][type] = "copy"
projects[aegir_objects][download][url] = "/opt/tmp/make_local/aegir_objects"

; https://ftp.drupal.org/files/projects/hosting_civicrm-7.x-3.2.tar.gz
projects[hosting_civicrm][download][type] = "copy"
projects[hosting_civicrm][download][url] = "/opt/tmp/make_local/hosting_civicrm"

; https://ftp.drupal.org/files/projects/hosting_deploy-7.x-3.2.tar.gz
projects[hosting_deploy][download][type] = "copy"
projects[hosting_deploy][download][url] = "/opt/tmp/make_local/hosting_deploy"

; https://ftp.drupal.org/files/projects/hosting_git-7.x-3.1.tar.gz
projects[hosting_git][download][type] = "copy"
projects[hosting_git][download][url] = "/opt/tmp/make_local/hosting_git"

; https://github.com/omega8cc/hosting_le/tree/7.x-3.x
projects[hosting_le][download][type] = "copy"
projects[hosting_le][download][url] = "/opt/tmp/make_local/hosting_le"

; https://ftp.drupal.org/files/projects/hosting_remote_import-7.x-3.0.tar.gz
projects[hosting_remote_import][download][type] = "copy"
projects[hosting_remote_import][download][url] = "/opt/tmp/make_local/hosting_remote_import"

; https://ftp.drupal.org/files/projects/hosting_site_backup_manager-7.x-3.3.tar.gz
projects[hosting_site_backup_manager][download][type] = "copy"
projects[hosting_site_backup_manager][download][url] = "/opt/tmp/make_local/hosting_site_backup_manager"

; https://ftp.drupal.org/files/projects/hosting_tasks_extra-7.x-3.2.tar.gz
projects[hosting_tasks_extra][download][type] = "copy"
projects[hosting_tasks_extra][download][url] = "/opt/tmp/make_local/hosting_tasks_extra"

; Aegir modules dev
;projects[hosting][type] = "module"
;projects[hosting][download][type] = 'git'
;projects[hosting][download][url] = 'https://github.com/omega8cc/hosting.git'
;projects[hosting][download][branch] = 'feature/3.0.x-hosting'

; Aegir theme dev
;projects[eldir][type] = "theme"
;projects[eldir][download][type] = 'git'
;projects[eldir][download][url] = 'https://github.com/omega8cc/eldir.git'
;projects[eldir][download][branch] = 'feature/3.0.x-eldir'

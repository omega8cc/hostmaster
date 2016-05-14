; Aegir Hostmaster include makefile
;

core = 7.x
api = 2

defaults[projects][subdir] = "contrib"
defaults[projects][type] = "module"

; Aegir Core

projects[eldir][subdir] = "aegir"
projects[eldir][type] = "theme"
projects[hosting][subdir] = "aegir"

; Aegir Golden

projects[hosting_civicrm][subdir] = aegir
projects[hosting_git][subdir] = aegir
projects[hosting_le][subdir] = aegir
projects[hosting_remote_import][subdir] = aegir
projects[hosting_site_backup_manager][subdir] = aegir
projects[hosting_tasks_extra][subdir] = aegir

; Aegir Drupal Contrib

; http://ftp.drupal.org/files/projects/admin_menu-7.x-3.0-rc5.tar.gz
projects[admin_menu][download][type] = "copy"
projects[admin_menu][download][url] = "/opt/tmp/make_local/admin_menu"

; http://ftp.drupal.org/files/projects/betterlogin-7.x-1.4.tar.gz
projects[betterlogin][download][type] = "copy"
projects[betterlogin][download][url] = "/opt/tmp/make_local/betterlogin"

; http://ftp.drupal.org/files/projects/ctools-7.x-1.9.tar.gz
projects[ctools][download][type] = "copy"
projects[ctools][download][url] = "/opt/tmp/make_local/ctools"

; http://ftp.drupal.org/files/projects/entity-7.x-1.7.tar.gz
projects[entity][download][type] = "copy"
projects[entity][download][url] = "/opt/tmp/make_local/entity"

; http://ftp.drupal.org/files/projects/openidadmin-7.x-1.0.tar.gz
projects[openidadmin][download][type] = "copy"
projects[openidadmin][download][url] = "/opt/tmp/make_local/openidadmin"

; http://ftp.drupal.org/files/projects/overlay_paths-7.x-1.3.tar.gz
projects[overlay_paths][download][type] = "copy"
projects[overlay_paths][download][url] = "/opt/tmp/make_local/overlay_paths"

; http://ftp.drupal.org/files/projects/r4032login-7.x-1.8.tar.gz
projects[r4032login][download][type] = "copy"
projects[r4032login][download][url] = "/opt/tmp/make_local/r4032login"

; http://ftp.drupal.org/files/projects/views-7.x-3.13.tar.gz
projects[views][download][type] = "copy"
projects[views][download][url] = "/opt/tmp/make_local/views"

; http://ftp.drupal.org/files/projects/views_bulk_operations-7.x-3.3.tar.gz
projects[views_bulk_operations][download][type] = "copy"
projects[views_bulk_operations][download][url] = "/opt/tmp/make_local/views_bulk_operations"

; BOA Drupal Contrib

; http://ftp.drupal.org/files/projects/features_extra-7.x-1.0.tar.gz
projects[features_extra][download][type] = "copy"
projects[features_extra][download][url] = "/opt/tmp/make_local/features_extra"

; http://ftp.drupal.org/files/projects/features-7.x-2.10.tar.gz
projects[features][download][type] = "copy"
projects[features][download][url] = "/opt/tmp/make_local/features"

; http://ftp.drupal.org/files/projects/idna_convert-7.x-1.0.tar.gz
projects[idna_convert][download][type] = "copy"
projects[idna_convert][download][url] = "/opt/tmp/make_local/idna_convert"

; http://ftp.drupal.org/files/projects/revision_deletion-7.x-1.x-dev.tar.gz
projects[revision_deletion][download][type] = "copy"
projects[revision_deletion][download][url] = "/opt/tmp/make_local/revision_deletion"

; http://ftp.drupal.org/files/projects/strongarm-7.x-2.0.tar.gz
projects[strongarm][download][type] = "copy"
projects[strongarm][download][url] = "/opt/tmp/make_local/strongarm"

; http://ftp.drupal.org/files/projects/userprotect-7.x-1.2.tar.gz
projects[userprotect][download][type] = "copy"
projects[userprotect][download][url] = "/opt/tmp/make_local/userprotect"

; BOA Custom Contrib

; hosting_custom_settings
projects[hosting_custom_settings][download][type] = "copy"
projects[hosting_custom_settings][download][url] = "/opt/tmp/make_local/hosting_custom_settings"

; Old BOA Contrib Changelog

; projects[hosting_backup_queue][download][type] = "copy"
; REMOVED

; projects[hosting_platform_pathauto][download][type] = "copy"
; Included in Aegir core

; projects[hosting_task_gc][download][type] = "copy"
; Included in Aegir core, but w/o feature/thermonuclear
; See: https://www.drupal.org/node/2053929#comment-8575755

; projects[protect_critical_users][download][type] = "copy"
; REMOVED, D7 core should provide this protection

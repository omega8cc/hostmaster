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

; http://ftp.drupal.org/files/projects/admin_menu-7.x-3.0-rc6.tar.gz
projects[admin_menu][download][type] = "copy"
projects[admin_menu][download][url] = "/opt/tmp/make_local/admin_menu"

; http://ftp.drupal.org/files/projects/betterlogin-7.x-1.5.tar.gz
projects[betterlogin][download][type] = "copy"
projects[betterlogin][download][url] = "/opt/tmp/make_local/betterlogin"

; http://ftp.drupal.org/files/projects/ctools-7.x-1.14.tar.gz
projects[ctools][download][type] = "copy"
projects[ctools][download][url] = "/opt/tmp/make_local/ctools"

; http://ftp.drupal.org/files/projects/entity-7.x-1.9.tar.gz
projects[entity][download][type] = "copy"
projects[entity][download][url] = "/opt/tmp/make_local/entity"

; http://ftp.drupal.org/files/projects/module_filter-7.x-2.1.tar.gz
projects[entity][download][type] = "copy"
projects[entity][download][url] = "/opt/tmp/make_local/module_filter"

; http://ftp.drupal.org/files/projects/openidadmin-7.x-1.0.tar.gz
projects[openidadmin][download][type] = "copy"
projects[openidadmin][download][url] = "/opt/tmp/make_local/openidadmin"

; http://ftp.drupal.org/files/projects/overlay_paths-7.x-1.3.tar.gz
projects[overlay_paths][download][type] = "copy"
projects[overlay_paths][download][url] = "/opt/tmp/make_local/overlay_paths"

; http://ftp.drupal.org/files/projects/r4032login-7.x-1.8.tar.gz
projects[r4032login][download][type] = "copy"
projects[r4032login][download][url] = "/opt/tmp/make_local/r4032login"

; http://ftp.drupal.org/files/projects/views-7.x-3.20.tar.gz
projects[views][download][type] = "copy"
projects[views][download][url] = "/opt/tmp/make_local/views"

; http://ftp.drupal.org/files/projects/views_bulk_operations-7.x-3.5.tar.gz
projects[views_bulk_operations][download][type] = "copy"
projects[views_bulk_operations][download][url] = "/opt/tmp/make_local/views_bulk_operations"

; Two factor authentication

; https://ftp.drupal.org/files/projects/libraries-7.x-2.5.tar.gz
projects[libraries][download][type] = "copy"
projects[libraries][download][url] = "/opt/tmp/make_local/libraries"

; https://ftp.drupal.org/files/projects/tfa-7.x-2.0.tar.gz
projects[tfa][download][type] = "copy"
projects[tfa][download][url] = "/opt/tmp/make_local/tfa"

; https://ftp.drupal.org/files/projects/tfa_basic-7.x-1.1.tar.gz
projects[tfa_basic][download][type] = "copy"
projects[tfa_basic][download][url] = "/opt/tmp/make_local/tfa_basic"
; projects[tfa_basic][patch][] = "https://www.drupal.org/files/issues/use_libraries_module-2807953-8.patch"

libraries[qrcodejs][download][type] = git
libraries[qrcodejs][download][url] = https://github.com/davidshimjs/qrcodejs.git
libraries[qrcodejs][download][revision] = 04f46c6a0708418cb7b96fc563eacae0fbf77674

; JQuery TimeAgo plugin

; https://ftp.drupal.org/files/projects/timeago-7.x-2.3.tar.gz
projects[timeago][download][type] = "copy"
projects[timeago][download][url] = "/opt/tmp/make_local/timeago"

libraries[timeago][download][type] = get
libraries[timeago][download][url] = https://raw.githubusercontent.com/rmm5t/jquery-timeago/v1.6.1/jquery.timeago.js
libraries[timeago][destination] = libraries

; Vue.js
libraries[vuejs][download][type] = get
libraries[vuejs][download][url] = https://github.com/vuejs/vue/raw/v2.4.4/dist/vue.min.js
libraries[vuejs][destination] = libraries

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

; http://ftp.drupal.org/files/projects/revision_deletion-7.x-1.0.tar.gz
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

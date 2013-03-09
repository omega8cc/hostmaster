core = 6.x
api = 2

; BOA-2.0.6-dev

; Contrib modules
projects[admin_menu][version] = "1.8"
projects[openidadmin][version] = "1.2"
projects[install_profile_api][version] = "2.1"
projects[jquery_ui][version] = "1.4"
projects[modalframe][version] = "1.6"

; These are contrib modules, but come under the Aegir 'umbrella' of control.
projects[hosting_platform_pathauto][version] = "2.0-beta1"

; These are contrib modules, but come under the Octopus 'umbrella' of control.
projects[hosting_task_gc][version] = "1.0-alpha1"
projects[revision_deletion][version] = "1.x-dev"
projects[strongarm][version] = "2.2"
projects[features][version] = "1.2"
projects[features_extra][version] = "1.x-dev"
projects[ctools][version] = "1.10"
projects[hosting_backup_gc][version] = "1.2"
projects[hosting_backup_queue][version] = "1.x-dev"
projects[protect_critical_users][version] = "1.1"
projects[userprotect][version] = "1.5"

; Libraries
libraries[jquery_ui][download][type] = "get"
libraries[jquery_ui][destination] = "modules/jquery_ui"
libraries[jquery_ui][download][url] = "http://files.aegir.cc/dev/jquery.ui-1.6.zip"
libraries[jquery_ui][directory_name] = "jquery.ui"

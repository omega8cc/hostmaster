; Aegir Hostmaster include makefile
;

api = 2
core = 6.x

; Aegir modules for stable releases
projects[hosting][type] = "module"
projects[hosting][download][type] = "copy"
projects[hosting][download][url] = "/opt/tmp/make_local/hosting"

; Aegir theme for stable releases
projects[eldir][type] = "theme"
projects[eldir][download][type] = "copy"
projects[eldir][download][url] = "/opt/tmp/make_local/eldir"

; Contrib modules
projects[views][type] = "module"
;projects[views][version] = "3.2"
projects[views][download][type] = "copy"
projects[views][download][url] = "/opt/tmp/make_local/views"

projects[views_bulk_operations][type] = "module"
;projects[views_bulk_operations][version] = "1.16"
projects[views_bulk_operations][download][type] = "copy"
projects[views_bulk_operations][download][url] = "/opt/tmp/make_local/views_bulk_operations"

projects[admin_menu][type] = "module"
;projects[admin_menu][version] = "1.9"
projects[admin_menu][download][type] = "copy"
projects[admin_menu][download][url] = "/opt/tmp/make_local/admin_menu"

projects[install_profile_api][type] = "module"
;projects[install_profile_api][version] = "2.1"
projects[install_profile_api][download][type] = "copy"
projects[install_profile_api][download][url] = "/opt/tmp/make_local/install_profile_api"

projects[jquery_ui][type] = "module"
;projects[jquery_ui][version] = "1.5"
projects[jquery_ui][download][type] = "copy"
projects[jquery_ui][download][url] = "/opt/tmp/make_local/jquery_ui"

projects[jquery_update][type] = "module"
;projects[jquery_update][version] = "2.0-alpha1"
projects[jquery_update][download][type] = "copy"
projects[jquery_update][download][url] = "/opt/tmp/make_local/jquery_update"

projects[modalframe][type] = "module"
;projects[modalframe][version] = "1.9"
projects[modalframe][download][type] = "copy"
projects[modalframe][download][url] = "/opt/tmp/make_local/modalframe"

projects[openidadmin][type] = "module"
;projects[openidadmin][version] = "1.2"
projects[openidadmin][download][type] = "copy"
projects[openidadmin][download][url] = "/opt/tmp/make_local/openidadmin"

; These are contrib modules, but come under the Octopus 'umbrella' of control.
projects[css_emimage][type] = "module"
;projects[css_emimage][version] = "2.x-dev"
projects[css_emimage][download][type] = "copy"
projects[css_emimage][download][url] = "/opt/tmp/make_local/css_emimage"

projects[ctools][type] = "module"
;projects[ctools][version] = "1.14"
projects[ctools][download][type] = "copy"
projects[ctools][download][url] = "/opt/tmp/make_local/ctools"

projects[features_extra][type] = "module"
;projects[features_extra][version] = "1.x-dev"
projects[features_extra][download][type] = "copy"
projects[features_extra][download][url] = "/opt/tmp/make_local/features_extra"

projects[features][type] = "module"
;projects[features][version] = "1.2"
projects[features][download][type] = "copy"
projects[features][download][url] = "/opt/tmp/make_local/features"

projects[hosting_backup_queue][type] = "module"
;projects[hosting_backup_queue][version] = "1.x-dev"
projects[hosting_backup_queue][download][type] = "copy"
projects[hosting_backup_queue][download][url] = "/opt/tmp/make_local/hosting_backup_queue"

projects[hosting_platform_pathauto][type] = "module"
;projects[hosting_platform_pathauto][version] = "2.1"
projects[hosting_platform_pathauto][download][type] = "copy"
projects[hosting_platform_pathauto][download][url] = "/opt/tmp/make_local/hosting_platform_pathauto"

projects[hosting_task_gc][type] = "module"
;projects[hosting_task_gc][version] = "1.0-alpha1"
projects[hosting_task_gc][download][type] = "copy"
projects[hosting_task_gc][download][url] = "/opt/tmp/make_local/hosting_task_gc"

projects[protect_critical_users][type] = "module"
;projects[protect_critical_users][version] = "1.1"
projects[protect_critical_users][download][type] = "copy"
projects[protect_critical_users][download][url] = "/opt/tmp/make_local/protect_critical_users"

projects[revision_deletion][type] = "module"
;projects[revision_deletion][version] = "1.x-dev"
projects[revision_deletion][download][type] = "copy"
projects[revision_deletion][download][url] = "/opt/tmp/make_local/revision_deletion"

projects[strongarm][type] = "module"
;projects[strongarm][version] = "2.2"
projects[strongarm][download][type] = "copy"
projects[strongarm][download][url] = "/opt/tmp/make_local/strongarm"

projects[userprotect][type] = "module"
;projects[userprotect][version] = "1.5"
projects[userprotect][download][type] = "copy"
projects[userprotect][download][url] = "/opt/tmp/make_local/userprotect"

; Libraries
libraries[jquery_ui][download][type] = "copy"
libraries[jquery_ui][destination] = "modules/jquery_ui"
libraries[jquery_ui][download][url] = "/opt/tmp/make_local/jquery-ui-1.7.3"
libraries[jquery_ui][directory_name] = "jquery.ui"

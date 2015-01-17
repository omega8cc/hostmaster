; Aegir Hostmaster include makefile
;

api = 2
core = 6.x

; Aegir modules for stable releases
projects[hosting][type] = "module"
projects[hosting][download][type] = "local"
projects[hosting][download][source] = "/opt/tmp/make_local/hosting"

; Aegir theme for stable releases
projects[eldir][type] = "theme"
projects[eldir][download][type] = "local"
projects[eldir][download][source] = "/opt/tmp/make_local/eldir"

; Contrib modules
projects[views][type] = "module"
;projects[views][version] = "3.0"
projects[views][download][type] = "local"
projects[views][download][source] = "/opt/tmp/make_local/views"

projects[views_bulk_operations][type] = "module"
;projects[views_bulk_operations][version] = "1.16"
projects[views_bulk_operations][download][type] = "local"
projects[views_bulk_operations][download][source] = "/opt/tmp/make_local/views_bulk_operations"

projects[admin_menu][type] = "module"
;projects[admin_menu][version] = "1.8"
projects[admin_menu][download][type] = "local"
projects[admin_menu][download][source] = "/opt/tmp/make_local/admin_menu"

projects[install_profile_api][type] = "module"
;projects[install_profile_api][version] = "2.1"
projects[install_profile_api][download][type] = "local"
projects[install_profile_api][download][source] = "/opt/tmp/make_local/install_profile_api"

projects[jquery_ui][type] = "module"
;projects[jquery_ui][version] = "1.5"
projects[jquery_ui][download][type] = "local"
projects[jquery_ui][download][source] = "/opt/tmp/make_local/jquery_ui"

projects[jquery_update][type] = "module"
;projects[jquery_update][version] = "2.0-alpha1"
projects[jquery_update][download][type] = "local"
projects[jquery_update][download][source] = "/opt/tmp/make_local/jquery_update"

projects[modalframe][type] = "module"
;projects[modalframe][version] = "1.9"
projects[modalframe][download][type] = "local"
projects[modalframe][download][source] = "/opt/tmp/make_local/modalframe"

projects[openidadmin][type] = "module"
;projects[openidadmin][version] = "1.2"
projects[openidadmin][download][type] = "local"
projects[openidadmin][download][source] = "/opt/tmp/make_local/openidadmin"

; These are contrib modules, but come under the Octopus 'umbrella' of control.
projects[css_emimage][type] = "module"
;projects[css_emimage][version] = "2.x-dev"
projects[css_emimage][download][type] = "local"
projects[css_emimage][download][source] = "/opt/tmp/make_local/css_emimage"

projects[ctools][type] = "module"
;projects[ctools][version] = "1.10"
projects[ctools][download][type] = "local"
projects[ctools][download][source] = "/opt/tmp/make_local/ctools"

projects[features_extra][type] = "module"
;projects[features_extra][version] = "1.x-dev"
projects[features_extra][download][type] = "local"
projects[features_extra][download][source] = "/opt/tmp/make_local/features_extra"

projects[features][type] = "module"
;projects[features][version] = "1.2"
projects[features][download][type] = "local"
projects[features][download][source] = "/opt/tmp/make_local/features"

projects[hosting_backup_queue][type] = "module"
;projects[hosting_backup_queue][version] = "1.x-dev"
projects[hosting_backup_queue][download][type] = "local"
projects[hosting_backup_queue][download][source] = "/opt/tmp/make_local/hosting_backup_queue"

projects[hosting_platform_pathauto][type] = "module"
;projects[hosting_platform_pathauto][version] = "2.1"
projects[hosting_platform_pathauto][download][type] = "local"
projects[hosting_platform_pathauto][download][source] = "/opt/tmp/make_local/hosting_platform_pathauto"

projects[hosting_task_gc][type] = "module"
;projects[hosting_task_gc][version] = "1.0-alpha1"
projects[hosting_task_gc][download][type] = "local"
projects[hosting_task_gc][download][source] = "/opt/tmp/make_local/hosting_task_gc"

projects[protect_critical_users][type] = "module"
;projects[protect_critical_users][version] = "1.1"
projects[protect_critical_users][download][type] = "local"
projects[protect_critical_users][download][source] = "/opt/tmp/make_local/protect_critical_users"

projects[revision_deletion][type] = "module"
;projects[revision_deletion][version] = "1.x-dev"
projects[revision_deletion][download][type] = "local"
projects[revision_deletion][download][source] = "/opt/tmp/make_local/revision_deletion"

projects[strongarm][type] = "module"
;projects[strongarm][version] = "2.2"
projects[strongarm][download][type] = "local"
projects[strongarm][download][source] = "/opt/tmp/make_local/strongarm"

projects[userprotect][type] = "module"
;projects[userprotect][version] = "1.5"
projects[userprotect][download][type] = "local"
projects[userprotect][download][source] = "/opt/tmp/make_local/userprotect"

; Libraries
libraries[jquery_ui][download][type] = "local"
libraries[jquery_ui][destination] = "modules/jquery_ui"
libraries[jquery_ui][download][source] = "/opt/tmp/make_local/jquery-ui-1.7.3"
libraries[jquery_ui][directory_name] = "jquery.ui"

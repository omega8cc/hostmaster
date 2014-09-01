core = 6.x
api = 2

; BOA-2.3.x

includes[hostmaster] = "drupal-org.make"

; Aegir modules dev
projects[hosting][type] = "module"
projects[hosting][download][type] = 'git'
projects[hosting][download][url] = 'https://github.com/omega8cc/hosting.git'
projects[hosting][download][branch] = '2.3.x-hosting-dev'

; Aegir theme dev
projects[eldir][type] = "theme"
projects[eldir][download][type] = 'git'
projects[eldir][download][url] = 'https://github.com/omega8cc/eldir.git'
projects[eldir][download][branch] = '2.3.x-eldir-dev'

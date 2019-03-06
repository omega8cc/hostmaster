<?php
/**
 * @file
 * Implement drush hooks for the hosting migrate module.
 */

/**
 * Implements drush_HOOK_pre_COMMAND().
 */
function drush_hosting_subdirs_pre_hosting_task($task) {
  $task = &drush_get_context('HOSTING_TASK');
  if ($task->ref->type == 'site' && $task->task_type == 'migrate') {
    $site = $task->ref;

    // If the site isn't using re-direction, then it isn't a subdir site.
    if (!isset($site->redirection) || !$site->redirection) return;
    // If the site isn't re-directing to a subdir, then it isn't a subdir site.
    if (!hosting_subdirs_is_a_subdir($site->redirection)) return;
    // If the site is re-directing to a custom alias, leave it alone.
    if ($site->title != hosting_site_get_domain($site->redirection)) return;

    // Clean up the automatic subdir alias and redirection, as they'll be
    // re-generated with the new domain.
    $subdir_alias = array_search($site->redirection, $site->aliases);
    unset($site->aliases[$subdir_alias]);
    unset($site->redirection);
  }
}


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

    if (!_hosting_subdirs_is_a_subdir_site($site)) return;

    // Clean up the automatic subdir alias and redirection, as they'll be
    // re-generated with the new domain.
    $subdir_alias = array_search($site->redirection, $site->aliases);
    unset($site->aliases[$subdir_alias]);
    unset($site->redirection);
  }
}

/**
 * Implements drush_HOOK_post_COMMAND().
 */
function drush_hosting_subdirs_post_hosting_task($task) {
  $task = &drush_get_context('HOSTING_TASK');
  if ($task->ref->type == 'site' && $task->task_type == 'migrate') {
    $site = $task->ref;

    if (!_hosting_subdirs_is_a_subdir_site($site)) return;

    // Trigger a new verify to re-sync the front-end aliases into the back-end
    // context, so that the subdir redirection works.
    hosting_add_task($site->nid, 'verify');
  }
}


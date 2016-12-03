<?php
/**
 * @file
 * Drush include for the package management module.
 */

function drush_hosting_package_pre_hosting_task() {
  $task = &drush_get_context('HOSTING_TASK');
  if ($task->ref->type == 'site') {
    // populate the profile option, if it hasn't been specified yet.
    if (empty($task->options['profile'])) {

      // If site node "profile_name" property is a string and not empty, lookup
      // the profile package NID and save it to the site node.
      if (empty($task->ref->profile) && !empty($task->ref->profile_name) && is_string($task->ref->profile_name)) {
        $instances = hosting_package_instances_load(array(
          'i.rid' => $task->ref->platform,
          'p.package_type' => 'profile',
          'p.short_name' => $task->ref->platform_name,
        ));
        $task->ref->profile = current($instances)->package_id;
        $task->ref->no_verify = TRUE;
        node_save($task->ref);
      }

      $profile = node_load($task->ref->profile);
      if ($task->task_type != 'import' && $task->task_type != 'delete' && $task->task_type != 'verify') {
        $task->options['profile'] = $profile->short_name;
      }
    }
  }
}

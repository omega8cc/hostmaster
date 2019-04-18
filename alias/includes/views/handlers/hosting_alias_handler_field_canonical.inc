<?php
/**
 * @file Views handler for Hosting Alias module.
 */

class hosting_alias_handler_field_canonical extends views_handler_field {
  function render($values) {
    // Use the redirection target, if it's available.
    if ($values->{$this->field_alias}) return $values->{$this->field_alias};
    // Fall back to the task node title.
    if (isset($values->node_hosting_task_title)) return $values->node_hosting_task_title;
    // Default to the node title.
    if (isset($values->node_title)) return $values->node_title;
  }
}


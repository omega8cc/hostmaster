<?php
/**
 * @file
 * Hosting alias views integration.
 */

/**
 * Implements hook_views_data().
 */
function hosting_alias_views_data() {
  // Views data for 'hosting_site_alias' table.
  $data['hosting_site_alias']['table'] = [
    'group' => 'Hosting Site Aliases',
    'title' => 'Site Aliases',
    'join' => [
      'node' => [
        'left_field' => 'vid',
        'field' => 'vid',
      ],
    ],
  ];
  $data['hosting_site_alias']['redirection'] = [
    'title' => t('Redirection Target'),
    'help' => t('The alias redirection target for this site.'),
    'field' => [
      'handler' => 'views_handler_field',
      'click sortable' => TRUE,
    ],
  ];
  return $data;
}


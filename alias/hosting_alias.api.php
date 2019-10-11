<?php

/**
 * @file
 * Hooks provided by the hosting_alias module.
 */

/**
 * Provide automatic aliases to generate.
 *
 * @see hosting_alias_automatic_aliases().
 */
function hook_hosting_automatic_aliases($url) {
  $aliases = [];
  // Add a couple automatic aliases.
  foreach (['www', 'web1'] as $subdomain) {
    $aliases[] = $subdomain . '.' . $url;
  }
  return $aliases;
}

/**
 * Alter the list of automatic aliases to create.
 *
 * @see hosting_alias_automatic_aliases().
 */
function hook_hosting_automatic_aliases_alter(&$aliases, $context) {
  $alias_to_remove = 'web1.' . $context['url'];
  $key = array_search($alias_to_remove, $aliases);
  if ($key !== FALSE) {
    // Remove our unwanted alias.
    unset($aliases[$key]);
  }
}


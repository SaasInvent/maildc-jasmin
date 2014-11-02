# Change the syntax for underscore.js templates.
# The pattern is now {{some_var}} instead of <%= some_var %>
#_.templateSettings =
#  interpolate : /\{\{(.+?)\}\}/g





# instead of <%= … %> use {{ … }} and instead of <% … %> use {[ … ]}
@orig_settings = _.templateSettings
#console.log @orig_settings

_.templateSettings =
  evaluate : /\{\[([\s\S]+?)\]\}/g,
  interpolate : /\{\{([\s\S]+?)\}\}/g




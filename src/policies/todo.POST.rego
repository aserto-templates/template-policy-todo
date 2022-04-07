package todoApp.POST.todo

import input.user
import future.keywords.in
import input.resource

default allowed = false

allowed {
  allowedRoles := { "clone", "little_helper", "evil_genius"}
  some x in allowedRoles
  user.attributes.roles[_] == x
}
package todoApp.POST.todo

import input.user
import future.keywords.in
import input.resource

default allowed = false

allowed {
  roles := { "clone", "little_helper", "evil_genius"}
  some x in roles
  user.attributes.roles[_] == x
}
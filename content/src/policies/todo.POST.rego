package todoApp.POST.todo

import future.keywords.in
import input.resource
import input.user

default allowed = false

allowed {
  allowedRoles := {"editor", "admin"}
  some x in allowedRoles
  user.properties.roles[_] == x
}

package todo.POST.todo

import input.user
import future.keywords.in

default allowed = false

allowed {
  roles := { "viewer", "editor", "admin"}
  some x in roles
  user.attribute.roles[_] == x
}
package todo.POST.todo

import input.user
import future.keywords.in

default allowed = false

allowed {
  roles := { "clone", "sidekick", "evil_genius"}
  some x in roles
  user.attributes.roles[_] == x
}
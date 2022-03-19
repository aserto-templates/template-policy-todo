package todo.PUT.todo

import input.user
import input.resource
import future.keywords.in

default allowed = false

allowed {
  roles := { "clone", "sidekick"}
  some x in roles
  user.attribute.roles[_] == x
  user.id == resource.id
}

allowed {
  user.attribute.roles[_] == "evil_genius"
}
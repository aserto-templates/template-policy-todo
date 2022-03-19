package todo.DELETE.todo.__id

import input.user
import input.resource
import future.keywords.in

allowed {
  roles := { "clone", "sidekick"}
  some x in roles
  user.attribute.roles[_] == x
  user.id == resource.id
}

allowed {
  user.attribute.roles[_] == "evil_genius"
}
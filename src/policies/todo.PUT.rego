package todo.PUT.todo

import input.user
import input.resource
import future.keywords.in

default allowed = false

allowed {
  roles := { "clone", "little_helper"}
  some x in roles
  user.attributes.roles[_] == x
  user.id == resource.id
}

allowed {
  user.attributes.roles[_] == "evil_genius"
}
package todo.DELETE.todo.__id

import input.user
import input.resource
import future.keywords.in

allowed {
  roles := { "clone", "sidekick"}
  some x in roles
  user.attributes.roles[_] == x
  user.email == resource.ownerEmail
}

allowed {
  user.attributes.roles[_] == "evil_genius"
}
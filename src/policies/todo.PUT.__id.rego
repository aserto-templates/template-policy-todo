package todoApp.PUT.todo.__id

import input.user
import input.resource
import future.keywords.in

default allowed = false

allowed {
  allowedRoles := { "clone", "little_helper"}
  some x in allowedRoles
  user.attributes.roles[_] == x
  some id , _ in user.identities
  id == resource.id
}

allowed {
  user.attributes.roles[_] == "evil_genius"
}
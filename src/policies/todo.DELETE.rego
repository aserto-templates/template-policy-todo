package todo.DELETE.todo

import input.user
import input.resource
import future.keywords.in

default allowed = false

allowed {
  roles := { "clone", "little_helper"}
  some x in roles
  user.attributes.roles[_] == x
  user.email == resource.ownerEmail
}

allowed {
  user.attributes.roles[_] == "evil_genius"
}

allowed {
  some id , _ in user.identities
  id == resource.ownerID
}
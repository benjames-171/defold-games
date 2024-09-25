components {
  id: "script"
  component: "/game/enemy/mutant.script"
}
components {
  id: "exp"
  component: "/game/effects/exp-mutant.particlefx"
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"enemy\"\n"
  "mask: \"player\"\n"
  "mask: \"laser\"\n"
  "mask: \"smart\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "      x: -0.5\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  data: 4.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "shot-factory"
  type: "factory"
  data: "prototype: \"/game/enemy/shot.go\"\n"
  ""
}
embedded_components {
  id: "b-factory"
  type: "factory"
  data: "prototype: \"/game/enemy/mutant-b.go\"\n"
  ""
}

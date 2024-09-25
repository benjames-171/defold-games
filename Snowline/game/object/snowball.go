components {
  id: "snowball"
  component: "/game/object/snowball.script"
}
components {
  id: "explode"
  component: "/game/effects/explode.particlefx"
}
components {
  id: "points"
  component: "/game/effects/50.particlefx"
  position {
    z: 0.1
  }
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"snowball\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game32.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "co-shot"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"snowball\"\n"
  "mask: \"shot\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  data: 15.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "snowball-factory"
  type: "factory"
  data: "prototype: \"/game/object/snowball-m.go\"\n"
  ""
}
embedded_components {
  id: "co-player"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"snowball\"\n"
  "mask: \"player\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  data: 15.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "token-factory"
  type: "factory"
  data: "prototype: \"/game/object/token.go\"\n"
  ""
}

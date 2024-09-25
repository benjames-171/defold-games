components {
  id: "player"
  component: "/game/player/player.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"jeep\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/32x16.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"player\"\n"
  "mask: \"rocket\"\n"
  "mask: \"enemy\"\n"
  "mask: \"pickup\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: -2.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 11.0\n"
  "  data: 4.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "blade"
  type: "sprite"
  data: "default_animation: \"blade\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/32x16.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 3.0
    y: 14.0
  }
}
embedded_components {
  id: "shot-factory"
  type: "factory"
  data: "prototype: \"/game/player/shot.go\"\n"
  ""
}

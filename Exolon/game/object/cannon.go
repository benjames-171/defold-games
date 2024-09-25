components {
  id: "cannon"
  component: "/game/object/cannon.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"cannon\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/obj.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 3.0
    y: 23.0
  }
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"solid\"\n"
  "mask: \"player\"\n"
  "mask: \"laser\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: 2.0\n"
  "      y: 10.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 9.0\n"
  "  data: 18.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "barrel"
  type: "sprite"
  data: "default_animation: \"barrel\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    x: -20.0
    y: 20.0
  }
}
embedded_components {
  id: "shot-factory"
  type: "factory"
  data: "prototype: \"/game/object/shot.go\"\n"
  ""
}

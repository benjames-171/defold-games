components {
  id: "script"
  component: "/game/object/lift.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"lift\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game32.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 8.0
    y: -24.0
  }
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 1.0\n"
  "restitution: 0.0\n"
  "group: \"world\"\n"
  "mask: \"player\"\n"
  "mask: \"boom\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: 8.0\n"
  "      y: -13.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 16.0\n"
  "  data: 5.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}

components {
  id: "platform"
  component: "/game/objects/platform.script"
  properties {
    id: "move"
    value: "0.0, 30.0, 0.0"
    type: PROPERTY_TYPE_VECTOR3
  }
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"platform\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/main.atlas\"\n"
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
  "group: \"platform\"\n"
  "mask: \"player\"\n"
  "mask: \"enemy\"\n"
  "mask: \"world\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 23.0\n"
  "  data: 7.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}

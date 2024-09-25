components {
  id: "pfx"
  component: "/game/object/float.particlefx"
}
components {
  id: "script"
  component: "/game/object/float.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"float\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/core.atlas\"\n"
  "}\n"
  ""
  position {
    y: 64.0
  }
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_STATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"float\"\n"
  "mask: \"player\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: 40.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 1.0\n"
  "  data: 40.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}

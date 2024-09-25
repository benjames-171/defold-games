components {
  id: "rocket"
  component: "/game/objects/rocket.script"
}
components {
  id: "pfx"
  component: "/game/objects/exhaust.particlefx"
  position {
    y: -24.0
  }
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"rocket\"\n"
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
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"rocket\"\n"
  "mask: \"player\"\n"
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
  "  data: 16.0\n"
  "  data: 24.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "1"
  type: "sprite"
  data: "default_animation: \"anim\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/objects/flame_s.tilesource\"\n"
  "}\n"
  ""
  position {
    x: -19.0
    y: -29.0
  }
}
embedded_components {
  id: "2"
  type: "sprite"
  data: "default_animation: \"anim\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/objects/flame.tilesource\"\n"
  "}\n"
  ""
  position {
    y: -32.0
  }
}
embedded_components {
  id: "3"
  type: "sprite"
  data: "default_animation: \"anim\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/objects/flame_s.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 19.0
    y: -29.0
  }
}

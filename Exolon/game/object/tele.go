components {
  id: "pfx"
  component: "/game/object/tele.particlefx"
  position {
    y: 12.0
  }
}
components {
  id: "script"
  component: "/game/object/tele.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"tele\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/obj.tilesource\"\n"
  "}\n"
  ""
  position {
    y: 23.0
  }
}
embedded_components {
  id: "prox"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"prox\"\n"
  "mask: \"player\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: 12.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 0.5\n"
  "  data: 12.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "arrow"
  type: "sprite"
  data: "default_animation: \"arrow-up\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    y: 50.0
  }
}

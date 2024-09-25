components {
  id: "player"
  component: "/game/player/player.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"static-right\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
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
  "mask: \"world\"\n"
  "mask: \"fence\"\n"
  "mask: \"belt\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "      y: -3.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  data: 5.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "box-factory"
  type: "factory"
  data: "prototype: \"/game/object/box.go\"\n"
  ""
}
embedded_components {
  id: "box-n"
  type: "sprite"
  data: "default_animation: \"box-1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    y: 4.0
    z: -0.2
  }
}
embedded_components {
  id: "box-s"
  type: "sprite"
  data: "default_animation: \"box-1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    y: -4.0
    z: 0.2
  }
}
embedded_components {
  id: "box-w"
  type: "sprite"
  data: "default_animation: \"box-1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    x: -6.0
    y: -3.0
    z: 0.2
  }
}
embedded_components {
  id: "box-e"
  type: "sprite"
  data: "default_animation: \"box-1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 6.0
    y: -3.0
    z: 0.2
  }
}

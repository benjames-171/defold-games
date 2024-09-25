components {
  id: "player"
  component: "/game/player/player.script"
}
components {
  id: "exp"
  component: "/game/player/exp-player.particlefx"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"player\"\n"
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
  "mask: \"enemy\"\n"
  "mask: \"fire\"\n"
  "mask: \"man\"\n"
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
  "  data: 5.0\n"
  "  data: 1.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "laser-factory"
  type: "factory"
  data: "prototype: \"/game/player/laser.go\"\n"
  ""
}
embedded_components {
  id: "ex-r"
  type: "sprite"
  data: "default_animation: \"exhaust\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    x: -14.0
  }
}
embedded_components {
  id: "ex-l"
  type: "sprite"
  data: "default_animation: \"exhaust\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 14.0
  }
  scale {
    x: -1.0
  }
}

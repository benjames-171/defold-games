components {
  id: "script"
  component: "/game/object/ship.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"ship\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/core.atlas\"\n"
  "}\n"
  ""
  position {
    y: 14.0
  }
}
embedded_components {
  id: "exhaust"
  type: "sprite"
  data: "default_animation: \"flame\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    y: -9.0
  }
}

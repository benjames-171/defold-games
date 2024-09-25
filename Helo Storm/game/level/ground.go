components {
  id: "ground"
  component: "/game/level/ground.script"
}
embedded_components {
  id: "sprite1"
  type: "sprite"
  data: "default_animation: \"13\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.atlas\"\n"
  "}\n"
  ""
  position {
    x: 128.0
    y: 48.0
    z: -0.8
  }
}
embedded_components {
  id: "sprite2"
  type: "sprite"
  data: "default_animation: \"13\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.atlas\"\n"
  "}\n"
  ""
  position {
    x: 384.0
    y: 48.0
    z: -0.8
  }
}

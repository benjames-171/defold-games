components {
  id: "torch"
  component: "/game/object/torch.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"torch\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "glow"
  type: "sprite"
  data: "default_animation: \"glow\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game32.tilesource\"\n"
  "}\n"
  ""
  position {
    y: 6.0
    z: -0.1
  }
}

components {
  id: "flame"
  component: "/game/effects/fire.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"anim\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/fire.tilesource\"\n"
  "}\n"
  ""
  position {
    y: 8.0
  }
}

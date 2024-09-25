components {
  id: "bonus"
  component: "/game/object/bonus.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"250\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
}

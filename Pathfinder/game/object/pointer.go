components {
  id: "pointer"
  component: "/game/object/pointer.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"pointer\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
}

components {
  id: "cursor"
  component: "/game/player/cursor.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"default\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/player/cursor.tilesource\"\n"
  "}\n"
  ""
}

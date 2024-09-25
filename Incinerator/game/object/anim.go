components {
  id: "anim"
  component: "/game/object/anim.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"anim1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
}

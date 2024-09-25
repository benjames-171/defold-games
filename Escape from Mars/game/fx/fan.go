components {
  id: "fan"
  component: "/game/fx/fan.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"fan\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.atlas\"\n"
  "}\n"
  ""
}

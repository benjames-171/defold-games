components {
  id: "script"
  component: "/game/effects/effect.script"
}
embedded_components {
  id: "flame-factory"
  type: "factory"
  data: "prototype: \"/game/effects/fire.go\"\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"blank\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/effects/exp.tilesource\"\n"
  "}\n"
  ""
}

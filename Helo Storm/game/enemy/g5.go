components {
  id: "script"
  component: "/game/enemy/g5.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"silo\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/32x16.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "missile-factory"
  type: "factory"
  data: "prototype: \"/game/enemy/missile.go\"\n"
  ""
}

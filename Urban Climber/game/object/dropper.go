components {
  id: "dropper"
  component: "/game/object/dropper.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"drop\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "plant-factory"
  type: "factory"
  data: "prototype: \"/game/object/item.go\"\n"
  ""
}

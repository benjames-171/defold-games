components {
  id: "spawner"
  component: "/game/enemy/spawner.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"portal\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "enemy-factory"
  type: "factory"
  data: "prototype: \"/game/enemy/enemy.go\"\n"
  ""
}

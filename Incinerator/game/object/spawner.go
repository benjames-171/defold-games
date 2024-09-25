components {
  id: "script"
  component: "/game/object/spawner.script"
}
embedded_components {
  id: "enemy-factory"
  type: "factory"
  data: "prototype: \"/game/enemy/enemy.go\"\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"hive\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    z: -0.2
  }
}

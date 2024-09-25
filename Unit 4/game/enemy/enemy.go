components {
  id: "enemy"
  component: "/game/enemy/enemy.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"enemy1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/tiles.tilesource\"\n"
  "}\n"
  ""
}

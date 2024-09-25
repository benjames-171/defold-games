components {
  id: "exit"
  component: "/game/fx/exit.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"exit\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/tiles.tilesource\"\n"
  "}\n"
  ""
  position {
    z: -0.1
  }
}

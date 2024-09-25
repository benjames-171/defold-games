components {
  id: "tracker"
  component: "/game/player/tracker.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"anim\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/player/tracker.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 15.0
  }
}

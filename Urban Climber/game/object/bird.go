components {
  id: "bird"
  component: "/game/object/bird.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"bird\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/24.tilesource\"\n"
  "}\n"
  ""
  position {
    z: 0.5
  }
}
embedded_components {
  id: "egg-factory"
  type: "factory"
  data: "prototype: \"/game/object/egg.go\"\n"
  ""
}

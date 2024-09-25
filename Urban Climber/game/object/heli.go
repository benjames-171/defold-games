components {
  id: "heli"
  component: "/game/object/heli.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"heli\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/main.atlas\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "blade"
  type: "sprite"
  data: "default_animation: \"anim\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/object/blade.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 13.0
    y: 15.0
  }
}
embedded_components {
  id: "player"
  type: "sprite"
  data: "default_animation: \"fall\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/24.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 18.0
    y: -24.0
    z: 0.1
  }
}

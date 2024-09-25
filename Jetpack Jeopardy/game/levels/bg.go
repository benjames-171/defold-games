components {
  id: "bg"
  component: "/game/levels/bg.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"bg\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/main.atlas\"\n"
  "}\n"
  ""
  position {
    x: 160.0
    y: 88.0
  }
}
embedded_components {
  id: "sprite1"
  type: "sprite"
  data: "default_animation: \"bg\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/main.atlas\"\n"
  "}\n"
  ""
  position {
    x: 480.0
    y: 88.0
  }
}

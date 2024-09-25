components {
  id: "bg"
  component: "/game/levels/bg.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"treebg\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/main.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.1
  }
}
embedded_components {
  id: "sprite1"
  type: "sprite"
  data: "default_animation: \"treebg\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/main.atlas\"\n"
  "}\n"
  ""
  position {
    y: 144.0
    z: 0.1
  }
}
embedded_components {
  id: "sprite2"
  type: "sprite"
  data: "default_animation: \"treebg\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/main.atlas\"\n"
  "}\n"
  ""
  position {
    x: 256.0
    y: 144.0
    z: 0.1
  }
}
embedded_components {
  id: "sprite3"
  type: "sprite"
  data: "default_animation: \"treebg\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/main.atlas\"\n"
  "}\n"
  ""
  position {
    x: 256.0
    z: 0.1
  }
}

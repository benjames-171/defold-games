components {
  id: "script"
  component: "/game/object/dropship.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"dropship\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/main.atlas\"\n"
  "}\n"
  ""
  position {
    z: 1.0
  }
}
embedded_components {
  id: "smoke-factory"
  type: "factory"
  data: "prototype: \"/game/object/smoke.go\"\n"
  ""
}

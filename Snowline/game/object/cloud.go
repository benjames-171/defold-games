components {
  id: "cloud"
  component: "/game/object/cloud.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"s1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_SCREEN\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/object/clouds.tilesource\"\n"
  "}\n"
  ""
}

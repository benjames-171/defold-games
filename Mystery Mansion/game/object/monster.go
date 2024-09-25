components {
  id: "monster"
  component: "/game/object/monster.script"
}
components {
  id: "pfx"
  component: "/game/object/smoke.particlefx"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"monster\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/32.tilesource\"\n"
  "}\n"
  ""
}

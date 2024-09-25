components {
  id: "script"
  component: "/game/player/player.script"
}
components {
  id: "pfx"
  component: "/game/player/explode.particlefx"
}
components {
  id: "bubbles"
  component: "/game/player/bubbles.particlefx"
  position {
    y: 4.0
  }
}
components {
  id: "strong"
  component: "/game/player/strong.particlefx"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"player\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/tiles.tilesource\"\n"
  "}\n"
  ""
}

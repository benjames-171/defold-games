components {
  id: "ground"
  component: "/game/level/ground.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "sprite1"
  type: "sprite"
  data: "tile_set: \"/game/core/game.atlas\"\n"
  "default_animation: \"13\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 128.0
    y: 48.0
    z: -0.8
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "sprite2"
  type: "sprite"
  data: "tile_set: \"/game/core/game.atlas\"\n"
  "default_animation: \"13\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 384.0
    y: 48.0
    z: -0.8
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}

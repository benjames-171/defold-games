components {
  id: "player"
  component: "/game/player/player.script"
}
components {
  id: "sink"
  component: "/game/core/sink.particlefx"
  position {
    y: -4.0
  }
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"player\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"player\"\n"
  "mask: \"mine\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 20.0\n"
  "  data: 8.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "bomb_factory"
  type: "factory"
  data: "prototype: \"/game/player/bomb.go\"\n"
  ""
}

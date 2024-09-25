components {
  id: "enemy"
  component: "/game/enemy/enemy.script"
}
components {
  id: "pfx-left"
  component: "/game/core/bubble.particlefx"
  position {
    x: -22.0
    y: -2.0
  }
}
components {
  id: "pfx-right"
  component: "/game/core/bubble.particlefx"
  position {
    x: 22.0
    y: -2.0
  }
}
components {
  id: "sink"
  component: "/game/core/sink.particlefx"
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"enemy\"\n"
  "mask: \"bomb\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: -2.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 22.0\n"
  "  data: 4.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"sub\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "mine_factory"
  type: "factory"
  data: "prototype: \"/game/enemy/mine.go\"\n"
  ""
}

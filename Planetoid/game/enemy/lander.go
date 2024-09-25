components {
  id: "script"
  component: "/game/enemy/lander.script"
}
components {
  id: "exp"
  component: "/game/effects/exp-lander.particlefx"
}
components {
  id: "warp"
  component: "/game/effects/exp-lander-warp.particlefx"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"lander\"\n"
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
  "group: \"enemy\"\n"
  "mask: \"player\"\n"
  "mask: \"laser\"\n"
  "mask: \"trig\"\n"
  "mask: \"smart\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "      x: -0.5\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  data: 4.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "mutant-factory"
  type: "factory"
  data: "prototype: \"/game/enemy/mutant.go\"\n"
  ""
}

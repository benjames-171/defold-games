components {
  id: "script"
  component: "/game/enemy/bosses/boss2.script"
}
components {
  id: "pfx"
  component: "/game/enemy/bosses/fireball.particlefx"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"boss2\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game32.tilesource\"\n"
  "}\n"
  ""
  position {
    z: 0.9
  }
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
  "mask: \"world\"\n"
  "mask: \"boom\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  data: 15.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "sprite-exhaust"
  type: "sprite"
  data: "default_animation: \"exhaust\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    y: -24.0
    z: 0.9
  }
}
embedded_components {
  id: "shot-factory"
  type: "factory"
  data: "prototype: \"/game/enemy/bosses/shot.go\"\n"
  ""
}

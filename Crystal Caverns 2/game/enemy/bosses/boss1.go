components {
  id: "boss1"
  component: "/game/enemy/bosses/boss1.script"
}
components {
  id: "pfx"
  component: "/game/enemy/bosses/fireball.particlefx"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"boss1a\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/enemy/bosses/boss1.tilesource\"\n"
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
  "  data: 13.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "bullet-factory"
  type: "factory"
  data: "prototype: \"/game/enemy/bullet.go\"\n"
  ""
}
embedded_components {
  id: "halo"
  type: "sprite"
  data: "default_animation: \"halo\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/enemy/bosses/boss1.tilesource\"\n"
  "}\n"
  ""
  position {
    z: 0.9
  }
}

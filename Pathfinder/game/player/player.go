components {
  id: "player"
  component: "/game/player/player.script"
}
components {
  id: "dust"
  component: "/game/player/dust.particlefx"
  position {
    y: -7.0
  }
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"static\"\n"
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
  "mask: \"world\"\n"
  "mask: \"crate\"\n"
  "mask: \"fireball\"\n"
  "mask: \"exit\"\n"
  "mask: \"float\"\n"
  "mask: \"mirror\"\n"
  "mask: \"teleport\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "      y: -3.5\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  data: 4.5\n"
  "}\n"
  ""
}

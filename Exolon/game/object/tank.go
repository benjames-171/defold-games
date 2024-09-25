components {
  id: "script"
  component: "/game/object/tank.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"tank\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/obj.tilesource\"\n"
  "}\n"
  ""
  position {
    y: 23.0
  }
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"solid\"\n"
  "mask: \"player\"\n"
  "mask: \"laser\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: 1.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: 8.0\n"
  "      y: 9.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 3\n"
  "    count: 3\n"
  "  }\n"
  "  data: 15.0\n"
  "  data: 8.0\n"
  "  data: 10.0\n"
  "  data: 8.0\n"
  "  data: 6.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "turret"
  type: "sprite"
  data: "default_animation: \"turret\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/obj.tilesource\"\n"
  "}\n"
  ""
  position {
    x: 5.0
    y: 47.0
  }
}
embedded_components {
  id: "barrel"
  type: "sprite"
  data: "default_animation: \"barrel\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    x: -15.0
    y: 20.0
  }
}
embedded_components {
  id: "barrel1"
  type: "sprite"
  data: "default_animation: \"barrel\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/game/core/game.tilesource\"\n"
  "}\n"
  ""
  position {
    x: -22.0
    y: 4.0
  }
}
embedded_components {
  id: "co1"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"solid\"\n"
  "mask: \"player\"\n"
  "mask: \"laser\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: 8.0\n"
  "      y: 20.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 14.0\n"
  "  data: 4.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "shot-factory"
  type: "factory"
  data: "prototype: \"/game/object/shot.go\"\n"
  ""
}

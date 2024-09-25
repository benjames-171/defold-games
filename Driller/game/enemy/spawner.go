components {
  id: "spawner"
  component: "/game/enemy/spawner.script"
}
embedded_components {
  id: "enemy_factory"
  type: "factory"
  data: "prototype: \"/game/enemy/enemy.go\"\n"
  ""
}

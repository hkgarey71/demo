

connection: "sisu_demo"

include: "*.view"

datagroup: purchases_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: purchases_default_datagroup

explore: sessions {
  label: "sessions"
  view_name: sessions
}

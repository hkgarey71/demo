connection: "sisu_demo"

datagroup: sessions_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sessions_default_datagroup

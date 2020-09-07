view: avg_sessions_duration_by_device {
  derived_table: {
    sql: SELECT device_mobile, avg(session_duration) FROM PUBLIC.SIVIEW_SESSIONS
      group by 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: device_mobile {
    type: string
    sql: ${TABLE}."DEVICE_MOBILE" ;;
  }

  dimension: avgsession_duration {
    type: number
    sql: ${TABLE}."AVG(SESSION_DURATION)" ;;
  }

  set: detail {
    fields: [device_mobile, avgsession_duration]
  }
}

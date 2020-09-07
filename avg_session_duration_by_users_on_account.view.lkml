view: avg_session_duration_by_users_on_account {
  derived_table: {
    sql: select avg (session_duration), NUM_USERS_ON_ACCOUNT
      from PUBLIC.SIVIEW_SESSIONS
      group by 2
      order by 2
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: avg_session_duration {
    type: number
    label: "AVG (SESSION_DURATION)"
    sql: ${TABLE}."AVG (SESSION_DURATION)" ;;
  }

  dimension: num_users_on_account {
    type: number
    sql: ${TABLE}."NUM_USERS_ON_ACCOUNT" ;;
  }

  set: detail {
    fields: [avg_session_duration, num_users_on_account]
  }
}

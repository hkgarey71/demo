view: sql_runner_query {
  derived_table: {
    sql: SELECT SESSION_DATE, AVG(session_duration) as "Average Session Duration"
      FROM PUBLIC.SIVIEW_SESSIONS
      GROUP BY session_date
      ORDER BY session_date
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: session_date {
    type: string
    sql: ${TABLE}."SESSION_DATE" ;;
  }

  dimension: average_session_duration {
    type: number
    label: "Average Session Duration"
    sql: ${TABLE}."Average Session Duration" ;;
  }

  set: detail {
    fields: [session_date, average_session_duration]
  }
}

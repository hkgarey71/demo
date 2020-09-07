view: avg_session_duration_by_tenure {
  derived_table: {
    sql: select tenure_in_months, avg(session_duration)
      FROM PUBLIC.SIVIEW_SESSIONS
      group by 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: tenure_in_months {
    type: string
    sql: ${TABLE}."TENURE_IN_MONTHS" ;;
  }

  dimension: avgsession_duration {
    type: number
    sql: ${TABLE}."AVG(SESSION_DURATION)" ;;
  }

  set: detail {
    fields: [tenure_in_months, avgsession_duration]
  }
}

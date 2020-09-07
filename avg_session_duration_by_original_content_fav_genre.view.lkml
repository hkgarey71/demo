view: avg_session_duration_by_original_content_fav_genre {
  derived_table: {
    sql: select original_content, logged_in_user_favorite_genre, avg(session_duration)
      from PUBLIC.SIVIEW_SESSIONS
      group by 1, 2
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: original_content {
    type: string
    sql: ${TABLE}."ORIGINAL_CONTENT" ;;
  }

  dimension: logged_in_user_favorite_genre {
    type: string
    sql: ${TABLE}."LOGGED_IN_USER_FAVORITE_GENRE" ;;
  }

  dimension: avgsession_duration {
    type: number
    sql: ${TABLE}."AVG(SESSION_DURATION)" ;;
  }

  set: detail {
    fields: [original_content, logged_in_user_favorite_genre, avgsession_duration]
  }
}

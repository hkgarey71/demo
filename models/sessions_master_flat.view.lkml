view: sessions_master_flat {

  derived_table: {
    sql: select * from PUBLIC.PURCHASES
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}."ACCOUNT_SOURCE" ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}."DEVICE_ID" ;;
  }

  dimension: device_mobile {
    type: string
    sql: ${TABLE}."DEVICE_MOBILE" ;;
  }

  dimension: device_pc {
    type: string
    sql: ${TABLE}."DEVICE_PC" ;;
  }

  dimension: did_pause {
    type: string
    sql: ${TABLE}."DID_PAUSE" ;;
  }

  dimension: household_income {
    type: string
    sql: ${TABLE}."HOUSEHOLD_INCOME" ;;
  }

  dimension: is_new_series {
    type: string
    sql: ${TABLE}."IS_NEW_SERIES" ;;
  }

  dimension: isp_id {
    type: string
    sql: ${TABLE}."ISP_ID" ;;
  }

  dimension: logged_in_user_age {
    type: string
    sql: ${TABLE}."LOGGED_IN_USER_AGE" ;;
  }

  dimension: logged_in_user_favorite_genre {
    type: string
    sql: ${TABLE}."LOGGED_IN_USER_FAVORITE_GENRE" ;;
  }

  dimension: logged_in_user_idx {
    type: string
    sql: ${TABLE}."LOGGED_IN_USER_IDX" ;;
  }

  dimension: num_users_on_account {
    type: number
    sql: ${TABLE}."NUM_USERS_ON_ACCOUNT" ;;
  }

  dimension: original_content {
    type: string
    sql: ${TABLE}."ORIGINAL_CONTENT" ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}."PRODUCT_SKU" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: session_date {
    type: date
    sql: ${TABLE}."SESSION_DATE" ;;
  }

  dimension: session_duration {
    type: number
    sql: ${TABLE}."SESSION_DURATION" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."SESSION_ID" ;;
  }

  dimension: show {
    type: string
    sql: ${TABLE}."SHOW" ;;
  }

  dimension: skipped_commercials {
    type: string
    sql: ${TABLE}."SKIPPED_COMMERCIALS" ;;
  }

  dimension: tenure_in_months {
    type: string
    sql: ${TABLE}."TENURE_IN_MONTHS" ;;
  }


  set: detail {
    fields: [
       account_id ,
      account_source  ,
      device_id ,
      device_mobile ,
      device_pc ,
      did_pause ,
      household_income  ,
      is_new_series ,
      isp_id  ,
      logged_in_user_age  ,
      logged_in_user_favorite_genre ,
      logged_in_user_idx  ,
      num_users_on_account  ,
      original_content  ,
      product_sku ,
      region  ,
      session_date  ,
      session_duration  ,
      session_id  ,
      show  ,
      skipped_commercials ,
      tenure_in_months
    ]
  }
}

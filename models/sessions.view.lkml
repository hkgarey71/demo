  view: sessions {
    sql_table_name: "PUBLIC"."SIVIEW_SESSIONS"
      ;;

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
      link: {
        label: "Understand why in Sisu"
        url: "https://vip.sisu.ai/projects/5253/metrics/18123/analyses/111508"
        icon_url : " "
      }
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

    measure: count {
      type: count
      drill_fields: []
    }

    measure: average {
      type: average
    }

    measure: sum {
      type: sum
    }

  }

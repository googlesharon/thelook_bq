view: dynamic_view {
  sql_table_name:
   (select *
    from `looker-private-demo.ecomm.{{ _user_attributes['table_name']}}`)
    ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  measure: count {
    type: count
  }


}

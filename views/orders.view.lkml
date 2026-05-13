view: orders {
  sql_table_name: dataset.orders ;;  

  dimension: order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: order_date {
    type: date
    sql: ${TABLE}.order_date ;;
  }

  measure: total_orders {
    type: count
  }

  measure: total_sales {
    type: sum
    sql: ${TABLE}.amount ;;
    value_format_name: usd
  }
}


#dataset.orders cambiar por el nombre real de la tabla
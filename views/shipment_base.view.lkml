view: shipment_base {
  sql_table_name: `kn-go-bi-dev-0001.global_acc.shipment_base` ;;

  dimension: ac_cost_center {
    type: string
    sql: ${TABLE}.ac_cost_center ;;
  }
  dimension: ac_department {
    type: string
    sql: ${TABLE}.ac_department ;;
  }
  dimension: at_depot_code {
    type: string
    sql: ${TABLE}.at_depot_code ;;
  }
  dimension: at_depot_country {
    type: string
    sql: ${TABLE}.at_depot_country ;;
  }
  dimension: at_depot_role {
    type: string
    sql: ${TABLE}.at_depot_role ;;
  }
  dimension: consignee_country {
    type: string
    sql: ${TABLE}.consignee_country ;;
  }
  dimension: consignee_name {
    type: string
    sql: ${TABLE}.consignee_name ;;
  }
  dimension: consignee_post_code {
    type: string
    sql: ${TABLE}.consignee_post_code ;;
  }
  dimension: control_depot_code {
    type: string
    sql: ${TABLE}.control_depot_code ;;
  }
  dimension: delivery_country {
    type: string
    sql: ${TABLE}.delivery_country ;;
  }
  dimension: delivery_post_code {
    type: string
    sql: ${TABLE}.delivery_post_code ;;
  }
  dimension: destination_depot_code {
    type: string
    sql: ${TABLE}.destination_depot_code ;;
  }
  dimension: destination_depot_country {
    type: string
    sql: ${TABLE}.destination_depot_country ;;
  }
  dimension: freight_payer_account_num {
    type: string
    sql: ${TABLE}.freight_payer_account_num ;;
  }
  dimension: freight_payer_account_type {
    type: string
    sql: ${TABLE}.freight_payer_account_type ;;
  }
  dimension: freight_payer_acon_account {
    type: string
    sql: ${TABLE}.freight_payer_acon_account ;;
  }
  dimension: freight_payer_name {
    type: string
    sql: ${TABLE}.freight_payer_name ;;
  }
  dimension: gross_wgt {
    type: number
    sql: ${TABLE}.gross_wgt ;;
  }
  dimension: incoterms {
    type: string
    sql: ${TABLE}.incoterms ;;
  }
  dimension: kn_com_ref {
    type: string
    sql: ${TABLE}.kn_com_ref ;;
  }
  dimension: ldm {
    type: number
    sql: ${TABLE}.ldm ;;
  }
  dimension: ordering_depot_code {
    type: string
    sql: ${TABLE}.ordering_depot_code ;;
  }
  dimension: org_incoterms {
    type: string
    sql: ${TABLE}.org_incoterms ;;
  }
  dimension: origin_depot_code {
    type: string
    sql: ${TABLE}.origin_depot_code ;;
  }
  dimension: origin_depot_country {
    type: string
    sql: ${TABLE}.origin_depot_country ;;
  }
  dimension: origin_depot_type {
    type: string
    sql: ${TABLE}.origin_depot_type ;;
  }
  dimension_group: partition_month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.partition_month ;;
  }
  dimension: partkey {
    type: number
    sql: ${TABLE}.partkey ;;
  }
  dimension: partkey_dm_shipments {
    type: number
    sql: ${TABLE}.partkey_dm_shipments ;;
  }
  dimension: pickup_country {
    type: string
    sql: ${TABLE}.pickup_country ;;
  }
  dimension: pickup_post_code {
    type: string
    sql: ${TABLE}.pickup_post_code ;;
  }
  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }
  dimension_group: shipment {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.shipment_date ;;
  }
  dimension: shipper_country {
    type: string
    sql: ${TABLE}.shipper_country ;;
  }
  dimension: shipper_name {
    type: string
    sql: ${TABLE}.shipper_name ;;
  }
  dimension: shipper_post_code {
    type: string
    sql: ${TABLE}.shipper_post_code ;;
  }
  dimension_group: statistical {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.statistical_date ;;
  }
  dimension: tax_wgt {
    type: number
    sql: ${TABLE}.tax_wgt ;;
  }
  dimension: traffic_code {
    type: string
    sql: ${TABLE}.traffic_code ;;
  }
  dimension: traffic_code_description {
    type: string
    sql: ${TABLE}.traffic_code_description ;;
  }
  dimension: traffic_code_group {
    type: string
    sql: ${TABLE}.traffic_code_group ;;
  }
  dimension: type_of_transport {
    type: string
    sql: ${TABLE}.type_of_transport ;;
  }
  dimension: volume {
    type: number
    sql: ${TABLE}.volume ;;
  }
  measure: count {
    type: count
    drill_fields: [consignee_name, freight_payer_name, shipper_name]
  }
}

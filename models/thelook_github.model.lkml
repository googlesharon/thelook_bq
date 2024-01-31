connection: "thelook_bq"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: users {}

explore: order_items {}

explore: dynamic_view {}

include: "/models/hub_tradelanes.model.lkml"
include: "/views/shipment_base.view.lkml"

explore: hub_tradelanes {

  hidden: no
  view_name: shipment_base
  label: "Shipment Flow Elo"
}

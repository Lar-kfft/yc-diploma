resource "yandex_compute_snapshot_schedule" "daily_snapshots" {
  name = "daily-snapshots"

  schedule_policy {
    expression = "0 0 * * *"  # каждый день в полночь
  }

  retention_period = "168h"  # хранить 7 дней (24*7)

  snapshot_spec {
    description = "Daily snapshot"
  }

  disk_ids = [
    yandex_compute_instance.web_a.boot_disk[0].disk_id,
    yandex_compute_instance.web_b.boot_disk[0].disk_id,
    yandex_compute_instance.prometheus.boot_disk[0].disk_id,
    yandex_compute_instance.grafana.boot_disk[0].disk_id,
    yandex_compute_instance.bastion.boot_disk[0].disk_id,
    yandex_compute_instance.elastic.boot_disk[0].disk_id,
    yandex_compute_instance.kibana.boot_disk[0].disk_id
  ]
}

output "load_balancer_ip" {
  description = "Public IP address of the load balancer"
  value = yandex_alb_load_balancer.web_lb.listener[0].endpoint[0].address[0].external_ipv4_address[0].address
}

output "web_server_a_ip" {
  description = "Private IP of web server A"
  value = yandex_compute_instance.web_a.network_interface.0.ip_address
}

output "web_server_b_ip" {
  description = "Private IP of web server B"
  value = yandex_compute_instance.web_b.network_interface.0.ip_address
}

output "bastion_ip" {
  description = "Public IP of bastion host"
  value = yandex_compute_instance.bastion.network_interface.0.nat_ip_address
}

output "prometheus_ip" {
  description = "Private IP of Prometheus server"
  value = yandex_compute_instance.prometheus.network_interface.0.ip_address
}

output "grafana_ip" {
  description = "Public IP of Grafana server"
  value = yandex_compute_instance.grafana.network_interface.0.nat_ip_address
}

output "elastic_ip" {
  description = "Private IP of Elasticsearch server"
  value = yandex_compute_instance.elastic.network_interface.0.ip_address
}

output "kibana_ip" {
  description = "Public IP of Kibana server"
  value = yandex_compute_instance.kibana.network_interface.0.nat_ip_address
}

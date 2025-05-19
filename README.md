
## Todo: Make scripts in utilities folder executable.
fix issues with 
```
resource "null_resource" "create_yugabyte_universe" {
  # Define the trigger condition to run the provisioner block
  triggers = {
    cluster_instance_ids = "${join(",", google_compute_instance.yugabyte_node.*.id)}"
  }

  depends_on = [google_compute_instance.yugabyte_node]

  provisioner "local-exec" {
    command = "${path.module}/utilities/scripts/create_universe.sh 'GCP' '${var.region_name}' ${var.replication_factor} '${local.config_ip_list}' '${local.ssh_ip_list}' '${local.zone}' '${var.ssh_user}' ${var.ssh_private_key}"
  }
}
```
Run this locally on all 3 ?

<img width="1409" alt="image" src="https://github.com/user-attachments/assets/17992950-f4a3-459b-92d1-39345850fb22" />

## Testing connectivity with YDB with a python app

```
pip3 install psycopg2-binary
python3 sample-app.py
```
<img width="535" alt="image" src="https://github.com/user-attachments/assets/9e63312e-a1b5-4f5c-901d-7705d07defca" />

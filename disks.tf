



/* resource "google_compute_disk" "srv01-disk-02" {
    name = "db02"
    type = "pd-standard"
    size = "6"
    zone = "europe-west6-a"
}

resource "google_compute_attached_disk" "server01-prd2" {
    disk = google_compute_disk.srv01-disk-02.id
    instance = google_compute_instance.server01-prd.id
  
}
 */

resource "google_compute_network" "vpc_global" {
    name = "vpc-global"
    auto_create_subnetworks = false
}






resource "google_compute_subnetwork" "subnet-london" {
    name = "london-prd"
    region = "europe-west2"
    ip_cidr_range = "10.1.1.0/24"
    network = google_compute_network.vpc_global.name
}









resource "google_compute_firewall" "allow_http" {
    name = "allow-http"
    network = google_compute_network.vpc_global.name

    source_ranges = [ "0.0.0.0/0" ]

    allow {
      protocol = "tcp"
      ports = ["80"]
    }

    target_tags = ["allow-http"]
  
}

resource "google_compute_firewall" "allow_https" {
    name = "allow-https"
    network = google_compute_network.vpc_global.name

    source_ranges = [ "0.0.0.0/0" ]
    
    allow {
      protocol = "tcp"
      ports = ["443"]
    }

    target_tags = ["allow-https"]
  
}

resource "google_compute_firewall" "allow_ssh" {
    name = "allow-ssh"
    network = google_compute_network.vpc_global.name

    source_ranges = [ "0.0.0.0/0" ]
    
    allow {
      protocol = "tcp"
      ports = ["22"]
    }

    target_tags = ["allow-ssh"]
  
}

resource "google_compute_firewall" "allow_cups" {
    name = "allow-cups"
    network = google_compute_network.vpc_global.name

    source_ranges = [ "0.0.0.0/0" ]
    
    allow {
      protocol = "tcp"
      ports = ["631"]
    }

    target_tags = ["allow-cups"]
  
}
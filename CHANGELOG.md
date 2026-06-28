# Changelog

All notable changes to this project will be documented in this file.

## [2.0.0] - 2026-06-28

This is a major release that modernizes all GCP Terraform modules to support Terraform 1.0+ and Google Cloud provider v4.x/5.x.

### Added
- **GitHub Actions validation pipeline**: Added `.github/workflows/validate.yml` to automatically validate all GCP submodules using Terraform version `1.5.7` upon push to master or pull requests.

### Fixed
- **Cloud NAT Compile Issue**: Added missing `locals` block with `cloud_nat_address_count` and `nat_ips` in `cloud-nat/main.tf` and replaced the undeclared variable `var.network_name` with `var.net_name`.
- **Reserved Count Naming**: Renamed the reserved variable `count` to `instance_count` in `compute/variables.tf` and updated its occurrences in `compute/main.tf` to satisfy Terraform v0.12+ constraints.
- **Empty Versions File**: Populated the empty `node-pools/versions.tf` file with a proper version definition block.
- **Deprecated Flow Logs Syntax**: Replaced the deprecated direct `enable_flow_logs` attribute in subnets with a modern dynamic `log_config` block inside:
  - `shared-vpc/subnet/main.tf`
  - `cloud-nat/main.tf`
- **Deprecated GKE Credentials**: Removed deprecated `username` and `password` variables from the `master_auth` block in `native-vpc/main.tf` to satisfy modern GKE security API changes in Google Provider v4.x+.

### Modernized
- **Versions Upgrade**: Updated all `versions.tf` files across all submodules to require Terraform version `>= 1.0` and Google provider `>= 4.0.0` with proper registry source (`hashicorp/google`).
- **Syntax Cleanup**: Cleaned up legacy string interpolations like `"${var.region}"` and `"${join(...)}"` in `compute/main.tf` and `compute/outputs.tf`.

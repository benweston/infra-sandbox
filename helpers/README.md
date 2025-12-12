# `./helpers/`

> Utility scripts designed to be **run manually**.   

## :stop_sign: Important Distinction
- **`../scripts/`**: Contains scripts called _automatically_ by Terraform (e.g., `external` data sources).   
- **`../helpers/`**: Contains scripts for _ad hoc_ tasks, maintenance, local debugging, or repo setup.  **Terraform never calls these files directly.**   

---

## :warning: Safety Warning
These scripts often interact directly with cloud resources via the CLI.   
- **Always check your active profile** (`gcloud config list --format=json | jq`) before running.   
- **Read the script header** to understand if it performs destructive actions (e.g., resource cleanup).   

## How to Run

Ensure you are in the root of the repo or inside this directory. Most scripts act on the current working directory or require a target argument.   

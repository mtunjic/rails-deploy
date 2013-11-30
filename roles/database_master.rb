name "database_master"
description "Master postgresql node"

run_list(
  "databox::postgresql" 
)
default_attributes(
  :databox => {
    :db_root_password => "pass",
    :postgresql => [
      {
        "database_name" => "app_production",
        "username" => "username",
        "password" => "pass"
      }
     ]
  }
)

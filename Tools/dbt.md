**Run DBT Function** :

dbt init
dbt run

**run macro:** dbt run-operation {macro name}

**DBT Profiles**
Description : This is a connection configuration
macOS path : .dbt/profiles.yml

**Run Tests**
model: `dbt test --select cm_base`
model + upstream: `dbt test --select +cm_base`
model + downstream: `dbt test --select cm_base+`
source.table: `dbt test --select source:dv360.insertion-orders`
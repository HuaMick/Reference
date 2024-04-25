### Python Virtual Environment

---

*New Environement* :
windows: python -m venv .venv
linux: python3 -m venv .venv

*Activate Environment* :
windows: .venv\Scripts\activate.ps1
linux: source .venv\bin\activate


*Generate Requirements File* : pip freeze > requirements.txt



gitlabs - tickets and build
ci cd - run all the tests
they use dbt cloud - executes specific branches in dev and prod

release

dbt obtimisation - clustering - partitioning
datalake is where the data lands -> 
Projects have mainly bigquery
dataflow sits in put the events in a connector --> storage bucket --> dataflow --> Bigquery

audience optimiser
not enough of addens time
they building migration scripts

mongoDB
5tran

mysteries - not using the partitioning
2 weeks sprint planning
customer wanted hashing

hash a specific field

Customers
- intelligence dashboard (shopping malls) - dashboard for # of people going 
 - Audience optimiser product - Optimise for which billboards
 - can create new campaign
 - ConnectedTV - havn't done anything with  that data yet



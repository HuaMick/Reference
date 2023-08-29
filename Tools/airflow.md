1. pip install -r requirements.txt
2. edit the airflow.cfg found in: /Users/mickhua/airflow
3. update the following configurations:

dags_folder = < the path to folder containing your dags >

*set examples to false, otherwise your ui will be full of them*
load_examples = False

4. create environment file:

export AIRFLOW_HOME=/Users/mickhua/airflow
export SQLALCHEMY_SILENCE_UBER_WARNING=1


5. Reset and upgrade the airflow database
airflow db reset
airflow db upgrade


6. run Airflow standalone:
airflow standalone





[kubernetes_executor] #Change this from [kuberbetes] to [kuberbetes_executor]
# Path to the YAML pod file that forms the basis for KubernetesExecutor workers.
pod_template_file =

# The repository of the Kubernetes Image for the Worker to Run
worker_container_repository =

# The tag of the Kubernetes Image for the Worker to Run
worker_container_tag =
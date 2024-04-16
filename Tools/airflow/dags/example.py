import datetime
from zoneinfo import ZoneInfo


from airflow.decorators import dag, task
from airflow.operators.dummy import DummyOperator
from airflow.utils.task_group import TaskGroup

TIMEZONE = ZoneInfo("Australia/Sydney")
BACKFILL_START_DATE = "2024-01-01"
END_DATE = None


@dag(
    dag_id="id",
    schedule_interval="@daily",
    start_date=datetime.strptime(BACKFILL_START_DATE, "%Y-%m-%d").astimezone(TIMEZONE),
    end_date=(
        datetime.strptime(END_DATE, "%Y-%m-%d").astimezone(TIMEZONE)
        if END_DATE
        else None
    ),
    catchup=True,
)
def example_dag() -> None:
    # You can generate a list of taskgroups dynamically
    taskgroups = []
    with TaskGroup(group_id="taskgroup_id") as taskgroup:

        @task.branch(task_id="branch_task")
        def branch(
            taskgroup_id: str,
            *,
            client: dict[str, str],
            **context: dict,
        ) -> str:
            """Check if the client has started and is active."""
            # use the built-in context arg to get dag metadata
            dag_execution_date = context["ds"]
            print(f"Execution date: {dag_execution_date}")

            if True:
                return f"{taskgroup_id}.task_id_if_true"
            else:
                return f"{taskgroup_id}.task_id_if_false"

    taskgroups.append(taskgroup)


example_dag()

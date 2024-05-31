
For a specifc Python version : python3 -m virtualenv --python python3.8 ./venv --prompt "airflow"
For the latest Python 3: python3 -m virtualenv venv --prompt "(meaningful name)"

To activate: source venv/bin/activate

pip install -r requirements-dev.txt

pre-commit install
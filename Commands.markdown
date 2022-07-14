
**Next Steps**
https://cloud.google.com/training/badges

https://medium.com/apache-airflow/a-simple-guide-to-start-using-apache-airflow-2-on-google-cloud-1811c2127445

Grab Historcal Traffic Data from Transport NSW
https://opendata.transport.nsw.gov.au/dataset/historical-traffic-api/resource/76886ed6-b546-490c-895c-cdccff98ad15

**Run Python**
& c:/Users/mickh/OneDrive/01_Developer/02_Python/20220613/.venv/Scripts/python.exe -i `
c:/Users/mickh/OneDrive/01_Developer/02_Python/20220613/model.py

& c:/Users/mickh/OneDrive/01_Developer/02_Python/20220613/.venv/Scripts/python.exe -i `
c:/Users/mickh/OneDrive/01_Developer/02_Python/20220613/controller.py

& c:/Users/mickh/OneDrive/01_Developer/02_Python/20220613/.venv/Scripts/python.exe -i `
c:/Users/mickh/OneDrive/01_Developer/02_Python/20220613/streamlit_app.py

**debugpy**
*This is a Debugger for Pythong in VS Code*
https://github.com/microsoft/debugpy
launch.json needs to "connect": {"host": "localhost","port": 5678}

import debugpy
debugpy.listen(("localhost", 5678))

**GCP**
*$env:GOOGLE_APPLICATION_CREDENTIALS="C:\Users\mickh\OneDrive\01_Developer\00_GCP\Keys\nosql-353404-237f3bacb26d.json"

**Streamlit**
*Run App* : streamlit run ExampleApp1.py  

**Python Virtual Environment**
*New Environement* : python -m venv .venv
*Activate Environment* : .venv\Scripts\activate.ps1
*Generate Requirements File* : pip freeze > requirements.txt 

**Git**
*Initalize Repository* : git init
git config --global user.name "FIRST_NAME LAST_NAME"e
git config --global user.email "MY_NAME@example.com"

**WSL Ubuntu**
Username: huamick
Password: 1LoveCode+

**NSWTransportAPI**
Username: HuaMick
Email: hua.mick@gmail.com
Password: 1LoveAPIs+

AppName: App20220610
API Key (Client ID): rG3uaQgSxI8LbkMvtwS9fp61tZdQmxDOcqNj
api.transport.nsw.gov.au
Base URL: https://api.transport.nsw.gov.au/v1/
Public Transport - Realtime - Alerts - v2: https://api.transport.nsw.gov.au/v2/gtfs/alerts
HTTPS server on port 443.

**Pandas**
pd.DataFrame({
    k:v 
    for k,v in Resources['GCP'].items() 
    if k in ['RequestDate', 'RequestType']})

requests.groupby(
    ['RequestDate', 'RequestType']
    ).agg('size')

*rows in col1 to columns*
df.unstack(1, fill_value=0)

*index to column*
df.reset_index(inplace=True)

*df Counts*
df.groupby(
    ['RequestDate', 'RequestType']
    , as_index=False).agg(
        Count=pd.NamedAgg(
        column='RequestType', aggfunc="count"))


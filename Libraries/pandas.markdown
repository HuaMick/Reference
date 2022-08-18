### Pandas

---
**Create Date Frame**
~~~
pd.DataFrame({
    k:v 
    for k,v in Resources['GCP'].items() 
    if k in ['RequestDate', 'RequestType']})
~~~
**Aggregation**
~~~
requests.groupby(
    ['RequestDate', 'RequestType']
    ).agg('size')
~~~
**rows in col1 to columns**
~~~
df.unstack(1, fill_value=0)
~~~
**index to column**
~~~
df.reset_index(inplace=True)
~~~
**df Counts**
~~~
df.groupby(
    ['RequestDate', 'RequestType']
    , as_index=False).agg(
        Count=pd.NamedAgg(
        column='RequestType', aggfunc="count"))
~~~
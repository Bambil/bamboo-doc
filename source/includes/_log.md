# Log
Log is any incoming data from sensors, Expected to be received periodically.

## Application Point of View
```shell
curl -X POST -H "Content-Type: application/json" -d '{
        "type": "temperature",
        "agent_id": "parham_home/Newbie",
        "device_id": "1:7",
        "states": [
                "temperature"
        ]
}' "ip_address:8080/thing"
```

```javascript
agent.getThingsByType('temperature').forEach((thing) => {
  thing.log.then((result) => {
    JSON.stringify(result);
  });
});
```

> The above command returns JSON structured like this:

```json
{
    "temperature": {
        "value": "24",
        "time": "2016-09-24T23:05:34Z"
    }
}
```

This request is used to getting information. Through the states
parameter you can list the name of values you want and the *Log Component* will take care of the
rest of the job.

The parameter list for this request must be **json** formatted. Here is the
parameters list for this request:

 Parameter | Description
:---------:|:-------------------------------------
type       | Type of the thing you want to get the information.
agent_id   | The Agent id obtained from `/agent` command.
device_id  | The node id in the sub network of the specified Agent.
states     | An array containing the sensor paramaters that can be readed for example for temperature there is only *temperature* available

### HTTP Request

`POST http://ip_address:8080/thing`

## Thing Point of View

> Type: Log

```json
{
    "hash": "89ff0a48f1a799d1c8a3d409bdac0cd527f93036fd40c1860c1cae188ebc2961",
    "name": "Newbie",
    "data": {
        "id": "7:1",
        "type": "temperature",
        "state": [{
            "temperature": 10
        }],
        "timestamp": 1503341758576
    }
}
```

Things send logs periodically into `/Bamboo/${tenant}/agent/log`.

The parameter list for this request must be **json** formatted. Here is the
parameters list for this request:

 Parameter      | Description
:--------------:|:-------------------------------------
name            | Agent name
hash            | Agent identification given by Bamboo Platform
data.id         | Identification of target end device
data.state      | Current states of target end device
data.type       | Type of target end device
data.timestamp  | Log generated time

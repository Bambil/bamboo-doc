# Log
**Log** is every data that comes from the sensors, Log component provides following services:

1. Log Collection
2. Log Mediation
3. Log Storing

## Application Point of View
```shell
curl -X POST -H "Content-Type: application/json" -d '{
	"type": "multisensor",
	"agent_id": "b07882d6-5c28-597b-89f9-d250f74b0bad",
	"device_id": "1",
	"states": [
		"temperature",
		"humidity"
	]
}' "ip_address:8080/thing"
```

```javascript
agent.getThingsByType('multisensor').forEach((thing) => {
  thing.log.then((result) => {
    JSON.stringify(result);
  });
});
```

> The above command returns JSON structured like this:

```json
{
    "humidity": {
        "value": "27",
        "time": "2016-09-24T23:05:34Z"
    },
    "temperature": {
        "value": "24",
        "time": "2016-09-24T23:05:34Z"
    }
}
```

This request is used getting information. Through the states
parameter you can list the name of values you want and the *Log Component* will take care of the
rest of the job.

The parameter list for this request must be **json** formatted. Here is the
parameters list for this request:

 Parameter | Description
:--------- |:-------------------------------------
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
    "agent": "dummy",
    "device": "1",
    "type": "temperature",
    "states": [{
        "name": "temperature",
        "value": "10"
    }],
    "timestamp": 10
}
```

This request is used for sending information.

The parameter list for this request must be **json** formatted. Here is the
parameters list for this request:

 Parameter | Description
:--------- |:-------------------------------------
agent      | Agent identification
device     | Target end device identification
type       | Type of target end device
timestamp  | Log generated time
states     | Cuurent states of target end device

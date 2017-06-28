# Things
I1820 Thing management and control API.

## States & Statistics

```shell
curl -X POST -H "Content-Type: application/json" -d '{
	"type": "multisensor",
	"agent_id": "b07882d6-5c28-597b-89f9-d250f74b0bad",
	"device_id": "1",
	"states": [
		"temperature",
		"humidity"
	]
}' "iot.ceit.aut.ac.ir:58902/thing"
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
parameter you can list the name of values you want and the I1820 will take care of the
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

## Discovery

```shell
curl "iot.ceit.aut.ac.ir:58902/agent"
```

> The above command returns JSON sturctured lisk this:

```json
{
    "b07882d6-5c28-597b-89f9-d250f74b0bad": {
        "time": "2016-09-20 18:05:56.124096",
        "things": [
        {
            "id": "0",
            "type": "lamp"
        }, {
            "id": "1",
            "type": "temperature"
        }]
    }
}
```

This request is used for getting all of the agents and their nodes that are connected
to the system.

### HTTP Request

`GET http://ip_address:8080/agent`

## Settings

```shell
curl -X PUT -H "Content-Type: application/json" -d '{
	"type": "lamp",
	"agent_id": "b07882d6-5c28-597b-89f9-d250f74b0bad",
	"device_id": "1:5",
	"settings": {
		"on": true
	}
}' "iot.ceit.aut.ac.ir:58902/thing"
```

> The above command returns JSON structured like this:

```json
{"on": true}
```

This request is used for activating actuators or not. Through the settings
parameters you can set the values and the I1820 will take care of the
rest of the job.

The parameter list for this request must be **json** formatted. Here is the
parameters list for this request:

 Parameter | Description
:--------- |:-------------------------------------
type       | Type of the thing you want to trigger.
agent_id   | The RPi id obtained from `/agent` command.
device_id  | The node id in the sub network of the specified RPi
settings   | An object containing the actuators paramaters that can be triggred  for example for lamp there is only "on" available

### HTTP Request

`PUT http://ip_address:8080/thing`

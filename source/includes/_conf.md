# Conf
Conf component provides following services:

1. Change configuration
2. Configuration changed event

## Application point of view
```shell
curl -X PUT -H "Content-Type: application/json" -d '{
	"type": "lamp",
	"agent_id": "b07882d6-5c28-597b-89f9-d250f74b0bad",
	"device_id": "1:5",
	"settings": {
		"on": true
	}
}' "ip_address:8080/thing"
```

> The above command returns JSON structured like this:

```json
{"on": true}
```

This request is used for activating actuators or de-activating them. Through the settings
parameters you can set the values and the I1820 will take care of the
rest of the job.

The parameter list for this request must be **json** formatted. Here is the
parameters list for this request:

 Parameter | Description
:--------- |:-------------------------------------
type       | Type of the thing you want to trigger.
agent_id   | The RPi id obtained from `/agent` command.
device_id  | The node id in the sub network of the specified RPi
settings   | An object containing the actuators paramaters that can be triggred, for example for lamp there is only "on" available

### HTTP Request

`PUT http://ip_address:8080/thing`

## Thing Point of View

```json
{
    "agent": "dummy",
    "device": "1",
    "type": "temperature",
    "states": [{
        "name": "temperature",
        "value": "10"
    }]
}
```

This request is used for sending configuration changed event.

```json
{
    "agent": "dummy",
    "device": "1",
    "type": "lamp",
    "settings": [{
        "name": "on",
        "value": true
    }]
}
```

This request is used for getting configurations.

Parameter | Description
:--------- |:-------------------------------------
agent      | Agent identification
device     | Target end device identification
type       | Type of target end device
settings   | An object containing the actuators paramaters that can be triggred, for example for lamp there is only "on" available

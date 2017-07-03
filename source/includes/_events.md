# Events
Realtime pipe, that dispatchs application related events.

## General Information
We use [socket.io](http://socket.io/) for event dispatching and you can connect to it with following
informations:

- Namespace: `/I1820`
- Channel: `Event`, `Log`, `Raw` and `Discovery`

### Event
Events occur when sensors send an event to I1820.

```json
{
    "agent_id": "42f6a151-92bb-552d-ba69-bf1d25def01f",
    "device_id": "1",
    "code": "event",
    "type": "multisensor",
    "state": {
        "motion": {
	    "time": "",
	    "value": "1"
	}
    }
}
```

### Raw

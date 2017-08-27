# Trap
Bamboo realtime pipe which dispatchs application related events when they come into platform.

## General Information
Bamboo uses [socket.io](https://socket.io/) for realtime communication with applications by following
configurations:

- Namespace: `/Bamboo`
- Channel: `raw`

### Raw
Raw channel sends **raw** data as they come from things.

```json
{
    "type": "log",
    "data": {
        "agent_id": "parham_home/Newbie",
        "device_id": "1:7",
        "type": "temperature",
        "timestamp": "",
        "states": {
            "temperature": 10
        }
    }
}
```

### Raw

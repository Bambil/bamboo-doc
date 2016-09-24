---
title: API Reference

language_tabs:
  - shell

toc_footers:
  - <a href='http://aolab.github.io'>AoLab</a>  
  - <a href='https://github.com/tabrizian'>Iman Tabrizian</a>
  - <a href='https://github.com/1995parham'>Parham Alvani</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the I1820 API! This documentation is intended to provide
simple and easy to use documentation API of middleware team. As you can see
on the right side of the page there are ```curl``` commands that will execute
requests against our API.

# Things

## States & Statistics

> To read the states and statistics use this code:

## Discovery

In order to get all of the nodes that are connected to the system use you 
can use the following http request

```shell
curl "iot.ceit.aut.ac.ir:58902/discovery"
```

> The above command returns JSON sturctured lisk this:

```json
{
    "b07882d6-5c28-597b-89f9-d250f74b0bad": {
        "time": "2016-09-20 18:05:56.124096",
	"things": [
	    {
	        "id": "0",
		"attributes": {},
		"type": "lamp"
	    },
	    {
	        "id": "1",
		"attributes": {},
		"type": "temperature"
	    }
	],
	"ip": "192.168.1.4"
    }
}
```

### HTTP Request

`GET http://iot.ceit.aut.ac.ir:58902/discovery`

<aside class="success">
Lua developers don't worry <code>POST</code> is also possible.
</aside>

## Settings

```shell

```

> The above command returns JSON structured like this:

```json
```




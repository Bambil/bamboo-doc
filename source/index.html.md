---
title: API Reference

language_tabs:
  - shell

toc_footers:
  - <a href='AoLab'>http://aolab.github.io</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the I1820 API!

# Things

## States & Statistics

> To read the states and statistics use this code:

## Discovery

In order to get all of the nodes that are connected to the system use you can use the following http request

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

## Settings

```shell
curl "http://example.com/api/kittens"
  -H "Authorization: meowmeowmeow"
```

> The above command returns JSON structured like this:

```json
```

This endpoint retrieves all kittens.

### HTTP Request

`GET http://example.com/api/kittens`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
include_cats | false | If set to true, the result will also include cats.
available | true | If set to false, the result will include kittens that have already been adopted.

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get(2)
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.get(2)
```

```shell
curl "http://example.com/api/kittens/2"
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('meowmeowmeow');
let max = api.kittens.get(2);
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "name": "Max",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

This endpoint retrieves a specific kitten.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to retrieve


---
layout: default
title: Using the ranmodi api
---

The Ranmoji public API exposes a single `GET` endpoint for returning a single random emoji.

## Endpoint
`https://ranmoji.herokuapp.com/emojis/api/v.1.0/`

## example response:
parsing fetch request `repsponse.json()` will result in the following data.
```json
{
    "emoji": "&#x26E9;"
}
```

## Demo Use
Here, we make a fetch request to the API endpoint, parse the response, and can use the returned json data.

```javascript
function getRandom() {
  fetch('https://ranmoji.herokuapp.com/emojis/api/v.1.0/')
    .then(response => {
      response.json().then(data => {
        console.log('data!', data);
      })
    });
}
```

See it in action on CodePen. Press `RERUN` in the example below to see the demo return new, random emojis.

<p data-height="350" data-theme-id="light" data-slug-hash="rrAgXQ" data-default-tab="result" data-user="hagata" data-embed-version="2" class="codepen">See the Pen <a href="http://codepen.io/hagata/pen/rrAgXQ/">Ranmoji API usage-example</a> by Genki Hagata (<a href="http://codepen.io/hagata">@hagata</a>) on <a href="http://codepen.io">CodePen</a>.</p>
<script async src="//assets.codepen.io/assets/embed/ei.js"></script>
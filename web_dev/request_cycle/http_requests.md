## Release 0

* What are some common HTTP status codes?*

Some common HTTP status codes are:
- 200 - which means the request was successfully responded to
- 204 - which means the request was fulfilled successfully and the server does not need to respond with new content
- 304 - which means the document was not modified in response to a conditional GET request
- 404 - which means the server can't find anything matching the request

* What is the difference between a GET request and a POST request? When might each be used?

A GET request requests data from a server, while a POST request submits data to a server. A GET request might be used when trying to load a particular webpage, while a POST request might be used when trying to post a comment on an online forum.

* Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?*

A cookie is a way of keeping track of which particular browser HTTP requests are coming from. Upon receiving an HTTP request a server might respond with a Set-Cookie header which sets a cookie value. That value is then sent back to the server along with later HTTP requests so that the server knows which browser/user is requesting information.

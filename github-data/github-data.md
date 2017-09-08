## Introduction

In this challenge, you will answer questions about repositories from [LaunchAcademy's GitHub account](https://api.github.com/orgs/LaunchAcademy/repos).

## Learning Goals

* Learn about the concept of data **serialization**.
* Import a JavaScript Object Notation (JSON) document.
* Navigate a data structure and answer questions about it.

## Getting Started

```no-highlight
$ cd ~/challenges
$ et get github-data
$ cd github-data
```

Open the `github-data.json` file in your editor.

## Sharing Data

**How can two separate applications share data?** If the applications are
running on the same machine, we could use file storage as a way to share data.

**How can we represent numbers, strings, and objects between applications?**
In order to enable these two separate applications to "talk" to each other, it
is necessary to use an agreed upon "language."

> [...] [S]erialization is the process of translating data structures or object
> state into a format that can be stored and reconstructed later [...]

[Source](https://en.wikipedia.org/wiki/Serialization)

We need to **serialize** the data in one app, in order to share it with the
other.

**How do we serialize data? What serialization format should we use?** In JavaScript, we typically use the JavaScript Object Notation (JSON) format to
serialize the data within our applications. If we have a dataset we would like
to share with another application, we can serialize it with the `JSON.stringify()`
method.

```javascript
let contributors = [
  {
    "login": "lilybarrett",
    "id": 14283667,
    "avatar_url": "https://avatars3.githubusercontent.com/u/14283667?v=3",
    "url": "https://api.github.com/users/lilybarrett",
    "type": "User",
    "name": "Lily Barrett",
    "location": "Boston, MA",
    "created_at": "2015-09-14T22:34:01Z",
    "updated_at": "2017-04-11T19:32:31Z"
  },
  {
    "login": "radavis",
    "id": 1299034,
    "avatar_url": "https://avatars3.githubusercontent.com/u/1299034?v=3",
    "url": "https://api.github.com/users/radavis",
    "type": "User",
    "name": "Richard Davis",
    "location": "Boston, MA",
    "created_at": "2012-01-02T14:21:13Z",
    "updated_at": "2017-03-17T15:15:27Z"
  },
  {
    "login": "justinhuynh",
    "id": 8738301,
    "avatar_url": "https://avatars1.githubusercontent.com/u/8738301?v=3",
    "url": "https://api.github.com/users/justinhuynh",
    "type": "User",
    "name": "Justin Huynh",
    "location": null,
    "created_at": "2014-09-11T14:49:46Z",
    "updated_at": "2017-04-07T01:58:46Z"
  }
]

// JSON.stringify() example
let serializedData = JSON.stringify(contributors)
console.log(serializedData)
// now, save serializedData to file or
// serve data via API
```

The `stringify` method translates JavaScript objects into a string! We can now
save this data to a file.

If we have serialized data, and we want to get it back into a format that a
JavaScript application can understand, we can **unserialize** the data with
the `JSON.parse()` method.

```javascript
// read searializedData from file using node
fs = require('fs')
fs.readFile('contributors.json', 'utf8', (err, serializedData) => {
  if (err) {
    return console.log(err)
  }
  let unserializedData = JSON.parse(serializedData)
  console.log(unserializedData[0].name)
})
```

Now that we know how to share data between applications, let's practice using
this new skill.

## Instructions

We have provided some code to get you started.

```js
fs = require('fs')

let githubData

fs.readFile('github-data.json', 'utf8', (err, serializedData) => {
  if (err) {
    return console.log(err)
  }
  githubData = JSON.parse(serializedData)
})
```

The `githubData` variable will contain the data (in the form of arrays and objects)
that is stored in `github-data.json`.

Write code to answer the following questions about this data.

1. How many repositories does LaunchAcademy own?
2. Which repository has the largest size?
3. Which repository has the most watchers?
4. What is the most-recently created repository?
5. What is the oldest repository?
6. Print out (to the console) the name and description for each repository.

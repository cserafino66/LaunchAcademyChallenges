fetch('http://localhost:4567/books.json')
  .then(response => {
    if (response.ok) {
      return response;
    } else {
      let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
      throw(error);
    }
  })

  .then(response => {
    let jsonParsed = response.json();
    return jsonParsed;
  })
  .then(jsonParsed => {
    let booksDiv = document.getElementById("books");
    jsonParsed.books.forEach((book) => {
      booksDiv.innerHTML += `<li>${book.name}</li>`;
    });
  })
  .catch(error => console.error(`Error in fetch: ${error.message}`));

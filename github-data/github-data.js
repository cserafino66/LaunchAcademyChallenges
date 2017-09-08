fs = require('fs');

let githubData;

fs.readFile('github-data.json', 'utf8', (err, serializedData) => {
  if (err) {
    return console.log(err);
  }
  githubData = JSON.parse(serializedData);

  let index = 0;
  githubData.forEach((repository) => {
    index++;
  });
  console.log("LaunchAcademy has " + index + " repositories.");
  console.log("====");


  let maxSize = 0;
  let repoName = "";
  githubData.forEach((repository) => {
    if (repository.size > maxSize) {
      repoName = repository.name;
      maxSize = repository.size;
      }
  });
  console.log("The '" + repoName + "' repository is the largest with " + maxSize + " items.");
  console.log("====");


  let maxWatchers = 0;
  githubData.forEach((repository) => {
    if (repository.watchers > maxWatchers) {
      repoName = repository.name;
      maxWatchers = repository.watchers;
    }
  });
  console.log("The '" + repoName + "' repository has the most watchers with " + maxWatchers + ".");
  console.log("====");


  let newest = 0;
  let newest_Name = "";
  githubData.forEach((repository) => {
    if (Date.parse(repository.created_at) > newest) {
      newest_Name = repository.name;
      newest = Date.parse(repository.created_at);
    }
  });
  console.log("The most recently created repository is '" + newest_Name + "'." );
  console.log("====");


  let oldest = newest;
  let oldest_Name = "";
  githubData.forEach((repository) => {
    if (Date.parse(repository.created_at) < oldest) {
      oldest_Name = repository.name;
      oldest = Date.parse(repository.created_at);
    }
  });
  console.log("The oldest repository is '" + oldest_Name + "'.");
  console.log("====");


  githubData.forEach((repository) => {
    if (repository.description === null) {
      console.log(repository.name + ": (no description)");
    } else {console.log(repository.name + ": " + repository.description);
    }
  });
});

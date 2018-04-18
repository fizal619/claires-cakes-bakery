console.log("request helpers is loaded");

// make a helper function that returns a promise for any fetch to backend routes:
// default request type is 'GET'
function requestPromise(uri, method = "GET") {
  return new Promise((resolve, reject) => {
    const xhr = new XMLHttpRequest();
    xhr.open(method, uri);
    xhr.send();
    xhr.onload = function() {
      resolve(JSON.stringify(xhr.responseText));
    };
    xhr.onerror = function() {
      reject(xhr.statusText);
    };
  });
}
const request = requestPromise("http://localhost:4567/test", "GET");
request
  .then(data => {
    // #note:  This is where I am trying to get the JSON and put it's values into the DOM
    console.log(typeof data);
    console.log(data);
    let obj = JSON.parse(JSON.parse(data));
    let text = obj.title;
    let div = document.getElementById("test");
    div.innerHTML = text;
  })
  .catch(err => {
    console.log(`error in the response: ${err}`);
  });

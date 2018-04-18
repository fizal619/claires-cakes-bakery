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
    console.log(typeof data);
    // let div = document.getElementById("test");

    data = JSON.parse(JSON.parse(data));

    console.log(typeof data);
    console.log(Object.keys(data));
    div.innerHTML = data;
  })
  .catch(err => {
    console.log(`error in the response: ${err}`);
  });

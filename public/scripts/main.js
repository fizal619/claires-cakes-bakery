document.onload = function () {
  // put ajax requests here, for click buttons that will fetch different products

  //rough draft:  check this:
  cons requestPromise = function(method, uri) {
      return new Promise(function(resolve, reject) {
        const xhr = new XMLHttpRequest();
        xhr.open(method, uri);
        xhr.onload = function() {
            resolve(xhr.responseText)
        }
        xhr.onerror = function() {
            reject('look up error on request/response object')
        }
      });
  }
};

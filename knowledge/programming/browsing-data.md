# browsing data



## Using cURL

* `curl -V` to check that cURL is working
* `curl http://www.ifsc.edu.br` to get the content of the URI
* `curl -I http://www.ifsc.edu.br` to get the header of the URI
* `curl -L http://www.ifsc.edu.br` follow the links (redirects)
* `curl -L -H "Accept: text/turtle" http://dbpedia.org/resource/Tim_Berners-Lee` get the turtle content provided by the referenced URI


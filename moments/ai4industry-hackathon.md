# ai4industry-hackathon

### ai4industry links

* Lectures and hackathon meetings are happening on [zoom](https://zoom.us/j/364777584).
* Chat in [mattermost](https://mattermost.emse.fr/hackathon/)
* Gitlab code 

### Hackathon

* [Scenario description](https://gitlab.emse.fr/ai4industry/hackathon/-/wikis/scenario)
* [Packaging workshop json for simu2](https://ci.mines-stetienne.fr/simu2/packagingWorkshop)

### Leubot

* [Leubot API docs](https://app.swaggerhub.com/apis-docs/iomz/leubot/1.2.1#/) - University of St.Gallen \(ICS-HSG\)
* [Leubot positioning limits](https://github.com/Interactions-HSG/leubot)
* [Camera for leubot2](https://interactions.ics.unisg.ch/61-102/cam2/live-stream)

### Node-red

* [Node-red dashboard](https://flows.nodered.org/node/node-red-dashboard)

### Knowledge representation

* [Tripestore](https://ci.mines-stetienne.fr/triplestore/kg2) for group2 simulation
* [Web-based Visualization of Ontologies](http://vowl.visualdataweb.org/webvowl.html)
* A query on [https://ci.mines-stetienne.fr/triplestore/dataset.html?tab=query&ds=/kg2](https://ci.mines-stetienne.fr/triplestore/dataset.html?tab=query&ds=/kg2)

Given example

```text
PREFIX pto: <http://www.productontology.org/id/>
PREFIX td: <https://www.w3.org/2019/wot/td#>
PREFIX hctl: <https://www.w3.org/2019/wot/hypermedia#>
PREFIX onto: <https://ci.mines-stetienne.fr/kg2/ontology#>

SELECT ?machine ?targetUri WHERE {
  ?machine a pto:Packaging_machinery;
     td:hasPropertyAffordance [
         a onto:ConveyorSpeed;
         td:hasForm [
           hctl:hasTarget ?targetUri
         ]
     ] .
}
```

An overview on the dataset

```text
PREFIX pto: <http://www.productontology.org/id/>
PREFIX td: <https://www.w3.org/2019/wot/td#>
PREFIX hctl: <https://www.w3.org/2019/wot/hypermedia#>
PREFIX onto: <https://ci.mines-stetienne.fr/kg2/ontology#>

SELECT DISTINCT ?class WHERE {
	?something a ?class
}
```

A query

```text
PREFIX td: <https://www.w3.org/2019/wot/td#> 
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> 

SELECT ?thing ?prop ?name_p ?action ?name_a WHERE 
{ 
  ?thing td:hasPropertyAffordance ?prop ; 
         td:hasActionAffordance ?action. 
  
  ?action a td:ActionAffordance; td:name ?name_a . 
  
  ?prop a td:PropertyAffordance; td:name ?name_p . 
} 

```

Another query

```text
PREFIX hctl: <https://www.w3.org/2019/wot/hypermedia#> 
PREFIX itm: <https://ci.mines-stetienne.fr/kg2/itmfactory/> 
PREFIX dct: <http://purl.org/dc/terms/> 
prefix js: <https://www.w3.org/2019/wot/json-schema#> 
prefix onto: <https://ci.mines-stetienne.fr/kg8/ontology#> 
prefix pto:<http://www.productontology.org/id/> 
prefix td: <https://www.w3.org/2019/wot/td#> 

SELECT * WHERE { 
  ?subject a td:Thing . 
  ?subject ?affordance _:bn1 . 
  _:bn1 dct:title ?title ; 
        td:name ?name ; 
        td:description 
      ?description ; 
        td:hasForm _:bnform .
  
  _:bnform hctl:hasTarget ?target . 
}
```

### Other topics

* [Plugfest thingsweb API](http://plugfest.thingweb.io:8088/)
* [wot-td-java](https://github.com/Interactions-HSG/wot-td-java/blob/feature/phantomx/samples/phantomXRobotArm.ttl) visualizing [our data](http://www.visualdataweb.de/webvowl/#iri=https://ci.mines-stetienne.fr/kg2/itmfactory/xy10)


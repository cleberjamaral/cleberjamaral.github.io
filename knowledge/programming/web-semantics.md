# web-semantics

## SPARQL

### Using a playground

Playground: [http://rdfplayground.dcc.uchile.cl/](http://rdfplayground.dcc.uchile.cl/)

#### A database to play

```
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
<LarryPage>  
  <name> "Lawrence Edward Page"^^xsd:string ;
  <numberOfChildren> 2 ;
  <height> 1.7 ;
  <birthdate> "1973-03-26"^^xsd:date ;
  <wikipediaPage> "https://en.wikipedia.org/wiki/Larry_Page"^^xsd:anyURI ;
  <wealthInDollars> "107.9e9"^^xsd:double 
```

#### Retrieving all the that of the DB

```
PREFIX : <http://example.org/#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> 
SELECT * WHERE { ?s ?p ?o } LIMIT 10
```

#### Another database to play

```
PREFIX : <http://example.org/#>
:myProductionSystem a :System ; 
  :hasSubSystem :roboticArm1 , :conveyorBelt2 . 
:roboticArm1 a :System , :RoboticArm ; 
  :hasManufacturer :ABB . 
:conveyorBelt2 a :System ; 
  :hasSpeed "0.1" .
```

#### Retrieving all the that of the DB

```
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> 
SELECT * WHERE {?s ?p ?o} LIMIT 10
```

#### Retrieving all the Systems (which is all the data of this DB)

```
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT * WHERE {?s a :System} LIMIT 10
```

#### Retrieving the objects that have subsystems

```
PREFIX : <http://example.org/#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT * WHERE { ?System :hasSubSystem ?SS } LIMIT 10
```

#### Retrieving objects that have subsystems and its subsystem hasSpeed 0.1

```
PREFIX : <http://example.org/#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> 
SELECT * WHERE { ?s :hasSubSystem ?SS. ?SS :hasSpeed "0.1". } LIMIT 10
```

## Sources

* [ai4industry Summer School - EMSE](https://www.emse.fr/\~zimmermann/AI4Industry/2023/)

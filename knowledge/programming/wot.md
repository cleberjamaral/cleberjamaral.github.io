---
description: Web of Things
---

# wot

[https://eclipse.github.io/editdor/](https://eclipse.github.io/editdor/)

## Things Descriptions

### Retrieving a TD in json

```
// Considering basic autenthication with user/pw as simu1:simu1
curl -u simu1:simu1 "https://ci.mines-stetienne.fr/simu/storageRack" \\
  -H "Content-Type: application/json"
```

### Changing a property of a device

```
curl -X PUT \\
  "http://ci.mines-stetienne.fr/simu4/packagingWorkshop/properties/conveyorSpeed" \\
  -d '10' -H "Content-Type: application/json"
```

## Tools

* [Eclipse Things Description Viewer](https://eclipse.github.io/editdor/)

## Sources

* [Web of Things (WoT) Thing Description 1.1](https://www.w3.org/TR/wot-thing-description11/)
* [Web of Things (WoT) Architecture 1.1](https://www.w3.org/TR/wot-architecture/)
* [FAQ of the Summer School ia4industry - EMSE](https://gitlab.emse.fr/ai4industry/hackathon/-/wikis/frequently-asked-questions-\(FAQ\))
* [Hackathon AI for Industry 4.0 Summer School: Part I Web of Things](https://gitlab.emse.fr/ai4industry/hackathon/-/wikis/wot\_steps)


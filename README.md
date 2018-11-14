
# Team organization and task allocation problem

![Alt text](https://g.gravizo.com/source/autoOrgDesign?https%3A%2F%2Fraw.githubusercontent.com%2Fcleberjamaral%2Fcleberjamaral.github.io%2Fmaster%2FREADME.md?1)
<details> 
<summary>Phases</summary>
autoOrgDesign
@startuml;
(*) -right-> "There is a problem to solve\nby multiple agents\nat least one goal.\nthe tasks are complex, with little centralized knowledge";
-right-> "Split the goals\nin to smaller peaces";
-right-> "Suggests roles\nto be responsible for certain goals.";
-down-> "Agents get commited to roles";
-left-> "Agents helps to plan detailed actions";
-right-> (*) 
@enduml 
autoOrgDesign
</details>

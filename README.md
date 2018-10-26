# website

<details>
finantialAgentsMainIdea
  digraph G {
    size ="4,4";
    StockData [shape=box];
    Telegram [shape=diamond];
    Manager;
    Consultant ["n Consultants"];
    Manager -> Consultant;
    Consultant -> StockData;
    Consultant -> Telegram;
    Manager -> Telegram;
    Human -> Telegram;
  }
</details>

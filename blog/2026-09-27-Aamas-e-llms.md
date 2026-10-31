# A Inversão da Dinâmica Academia-Indústria na Comunidade de Agentes e Sistemas Multiagentes: O Caso dos LLMs e do AAMAS

A relação entre academia e indústria na comunidade de agentes e sistemas multiagentes (MAS), historicamente centrada na conferência AAMAS, passou por uma transformação significativa nos últimos anos. Até meados da década de 2020, os esforços de aproximação eram predominantemente iniciados pela academia e caracterizados por um ritmo relativamente tímido. Com a ascensão dos Large Language Models (LLMs) e do fenômeno denominado “Agentic AI”, essa dinâmica se inverteu: as inovações disruptivas originaram-se prioritariamente na indústria, e a academia passou a absorvê-las, teorizá-las e integrá-las, frequentemente já no contexto de aplicações reais. Este artigo examina essa transição com base em evidências concretas dos últimos três anos da conferência AAMAS e do desenvolvimento dos LLMs.

## O padrão anterior: aproximação orientada pela academia

Antes do boom dos LLMs (aproximadamente até 2022–2023), o AAMAS já disponha de mecanismos institucionais para fomentar a interação com a indústria. O Demo Track, por exemplo, convidava explicitamente participantes de academia e indústria a apresentar sistemas baseados em agentes e robóticos, com ênfase em aplicações em transporte, saúde, energia e comércio eletrônico. A área de Innovative Applications valorizava trabalhos com impacto real e colaborações com stakeholders. Além disso, esquemas de patrocínio (Platinum, Gold e outros) ofereciam visibilidade, sessões dedicadas e oportunidades de recrutamento, sob o discurso de benefícios mútuos: a indústria poderia atrair talentos, enquanto a academia compreenderia melhor os desafios práticos.

Esses esforços, embora genuínos, eram modestos em escala e impacto. A comunidade AAMAS permanecia predominantemente teórica e acadêmica, com forte presença em game theory, multi-agent reinforcement learning clássico, normas, arquiteturas BDI e verificação formal. A transferência de tecnologia ocorria de forma incremental, com a academia desenvolvendo protótipos e fundamentos que a indústria eventualmente adotava. Não havia, contudo, uma inversão de liderança tecnológica.

## A inversão: indústria como origem das inovações transformadoras

Os LLMs e os sistemas agentic baseados neles quebraram esse padrão. As principais inovações surgiram em laboratórios industriais com acesso a recursos computacionais massivos:

- A arquitetura Transformer, publicada em 2017 no artigo “Attention Is All You Need”, foi desenvolvida pelo Google Brain.
- A série GPT (GPT-1 em 2018, GPT-3 em 2020 e o lançamento público do ChatGPT em novembro de 2022) foi liderada pela OpenAI.
- Modelos de fronteira subsequentes, como Claude (Anthropic), Gemini (Google DeepMind) e LLaMA (Meta), também originaram-se de ambientes industriais.

Embora a academia tenha contribuído com fundamentos anteriores (mecanismos de atenção, pré-treinamento etc.), a escala, o alinhamento via RLHF, a disponibilização pública e a transformação prática em agentes autônomos (planejamento, uso de tools em loop, coordenação multiagente) foram impulsionadas pela indústria. O conceito de “agentic AI” ganhou tração a partir de frameworks e produtos comerciais, como o function calling da OpenAI (2023) e os sistemas multiagente da Anthropic.

Essa origem industrial inverteu a dinâmica tradicional: em vez de a academia inventar e a indústria adotar, a tecnologia dominante chegou pronta e a comunidade de MAS passou a estudá-la, formalizá-la e aprimorá-la.

## A resposta do AAMAS: absorção estruturada e institucionalização

A comunidade AAMAS reagiu de forma rápida e organizada entre 2023 e 2026. No AAMAS 2026, realizado em Paphos, Chipre, foi introduzida a área dedicada Generative and Agentic AI (GAAI) no main track. A mensagem de boas-vindas dos chairs afirma explicitamente: “The remarkable emergence of generative AI and Large Language Models has brought the concept of autonomous agents to the forefront of the global technology landscape, with ‘Agentic AI’ now a much talked about term. In recognition of this, we have introduced a dedicated new topic area this year – Generative and Agentic AI (GAAI).”

Essa mudança foi acompanhada por uma keynote central de Michael Wooldridge (University of Oxford), figura histórica da comunidade MAS, intitulada “Rethinking Multi-agent Systems in the Era of LLMs”. Wooldridge reconhece que os LLMs deram “new life to our old dream” e discute as lições de três décadas de pesquisa em sistemas multiagentes para o novo cenário de agentes baseados em LLMs, mencionando frameworks industriais e padrões emergentes.

Além disso, o volume de submissões no AAMAS 2026 atingiu recorde histórico (aproximadamente 1.455 full papers no main track, cerca de 50% a mais que o recorde anterior), em grande parte impulsionado pelo interesse em agentic AI. Demos e papers passaram a incorporar LLMs em cenários reais desde o início — por exemplo, sistemas de agentes de voz multilingues para operações de restaurantes (AAMAS 2025) e trabalhos sobre orquestração, memória de longo prazo e cooperação entre agentes LLM. Surveys recentes, como “AI Agents: From Concept to Code to Commerce – A Survey Bridging AAMAS and LLMs”, explicitamente buscam conectar a teoria clássica de AAMAS com implementações industriais e deployments comerciais.

O fortalecimento da interface com a indústria também se materializou no Industry Day do AAMAS 2026, no qual empresas apresentaram demonstrações de produtos ao lado do Demo Track acadêmico, com participação de organizações como SAP, Macnica e LamnAI, além de patrocínio de Google DeepMind.

## Por que a pesquisa se tornou naturalmente aplicada

Como a tecnologia chegou já madura e implantada (ChatGPT, Claude, agentes de pesquisa comerciais etc.), a pesquisa acadêmica no AAMAS raramente parte de um vácuo teórico isolado. Ela tende a abordar problemas que a indústria enfrenta na prática — orquestração de múltiplos agentes LLM, confiabilidade, coordenação de longo prazo, normas e ética em escala, memória persistente e tool-use — utilizando o arsenal teórico clássico de MAS (protocolos de interação, organizações, game theory, verificação e arquiteturas BDI) para disciplinar e melhorar sistemas que, por si só, são poderosos, porém frágeis em cenários multiagente complexos.

## Conclusão

A aproximação entre academia e indústria na comunidade de agentes e sistemas multiagentes intensificou-se e se inverteu com a chegada dos LLMs. A indústria liderou a inovação tecnológica disruptiva; a academia, por meio do AAMAS, absorveu o fenômeno, criou infraestrutura institucional (nova área GAAI, Industry Day, keynotes dedicadas) e passou a produzir pesquisa que dialoga naturalmente com aplicações reais. A nuance relevante é que a comunidade de MAS não se limita a reagir: ela contribui com o que a indústria frequentemente carece — fundamentos teóricos sólidos de coordenação, confiança, normas, verificabilidade e comportamento emergente. O encontro entre a escala industrial e a profundidade conceitual de três décadas de pesquisa em agentes define, em grande medida, o rumo atual e futuro do campo.

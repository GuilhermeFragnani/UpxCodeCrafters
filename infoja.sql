DROP DATABASE IF EXISTS infoja;
CREATE DATABASE infoja;

USE infoja;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(50) NOT NULL
);

CREATE TABLE disciplinas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    link VARCHAR(255) NOT NULL,
    resumo TEXT NOT NULL
);

CREATE TABLE materias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    link VARCHAR(255) NOT NULL,
    resumo TEXT NOT NULL,
    disciplinas_id INT,
    FOREIGN KEY (disciplinas_id) REFERENCES disciplinas(id)
);

CREATE TABLE usuarios_disciplinas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuarios_id INT,
    disciplinas_id INT,
    FOREIGN KEY (usuarios_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (disciplinas_id) REFERENCES disciplinas(id)
);

INSERT INTO disciplinas (nome, link, resumo) VALUES
('Programação', 'https://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_de_computadores', 'Programação é o processo de criação de um conjunto de instruções que informam um computador como executar uma tarefa específica.'),
('Português', 'https://pt.wikipedia.org/wiki/Linguagem_de_programa%C3%A7%C3%A3o', 'Uma linguagem de programação é um método padronizado, composto por um conjunto de regras sintáticas e semânticas, para escrever software.'),
('Matemática', 'https://pt.wikipedia.org/wiki/Matem%C3%A1tica', 'Matemática é a ciência que estuda a quantidade, a estrutura, o espaço e as mudanças.'),
('Ciências', 'https://pt.wikipedia.org/wiki/Ci%C3%AAncia', 'Ciência é um sistema que adquire conhecimento baseado em um método, conhecido como método científico. É construída com atitudes racionais, visando à obtenção de conhecimento específico, com base na observação, na realização de métodos experimentais e no desenvolvimento de teorias e leis.'),
('Conhecimentos Técnicos', 'https://pt.wikipedia.org/wiki/T%C3%A9cnica', 'Conhecimentos técnicos referem-se às habilidades e conhecimentos práticos necessários para realizar tarefas específicas.');

INSERT INTO materias (disciplinas_id, nome, link, resumo) VALUES
(1, 'Introdução à Programação', 'https://www.coursera.org/learn/cs50', 'Este curso aborda os conceitos básicos de programação, incluindo sintaxe, estruturas de controle e funções. Ideal para iniciantes.'),
(1, 'Estruturas de Dados', 'https://www.udemy.com/course/data-structures-and-algorithms-deep-dive-using-java/', 'Aprenda sobre listas, pilhas, filas e árvores, que são fundamentais para a organização e armazenamento eficiente de dados.'),
(1, 'Algoritmos', 'https://www.edx.org/course/algorithms-1', 'Estude os principais algoritmos utilizados em programação, como ordenação e busca, além de técnicas de análise de complexidade.'),
(1, 'Programação Orientada a Objetos', 'https://www.udacity.com/course/object-oriented-programming-in-python--nd303', 'Entenda os conceitos de classes, objetos, herança e polimorfismo para desenvolver software modular e reutilizável.'),
(1, 'Desenvolvimento de Jogos', 'https://www.coursera.org/specializations/game-development', 'Explore as técnicas e ferramentas utilizadas no desenvolvimento de jogos, incluindo motores de jogo e programação gráfica.'),
(1, 'Inteligência Artificial', 'https://www.coursera.org/learn/machine-learning', 'Conheça os fundamentos da inteligência artificial, incluindo aprendizado de máquina, redes neurais e algoritmos genéticos.'),
(1, 'Desenvolvimento Mobile', 'https://developer.android.com/courses', 'Aprenda a criar aplicativos para dispositivos móveis, incluindo Android e iOS, utilizando frameworks populares.'),
(1, 'Segurança da Informação', 'https://www.coursera.org/specializations/cyber-security', 'Estude os princípios de segurança da informação, incluindo criptografia, controle de acesso e proteção de dados.'),
(1, 'Banco de Dados', 'https://www.edx.org/course/introduction-to-databases', 'Aprenda a modelar, criar e gerenciar bancos de dados relacionais utilizando SQL.'),
(1, 'Redes de Computadores', 'https://www.coursera.org/learn/computer-networking', 'Explore os conceitos e tecnologias de redes de computadores, incluindo protocolos, topologias e segurança de redes.'),
(1, 'Programação Web', 'https://www.udacity.com/course/full-stack-web-developer-nanodegree--nd0044', 'Estude o desenvolvimento de aplicações web, incluindo HTML, CSS, JavaScript e frameworks modernos.'),
(1, 'DevOps', 'https://www.coursera.org/specializations/devops', 'Conheça as práticas de DevOps para integração contínua, entrega contínua e automação de infraestrutura.'),
(2, 'Literatura Brasileira', 'https://www.lendo.org/', 'Explore a rica tradição literária do Brasil, incluindo autores clássicos e contemporâneos.'),
(2, 'Produção Textual', 'https://www.coursera.org/learn/escrevendo-em-portugues', 'Desenvolva habilidades de escrita e produção de textos coerentes e coesos para diferentes finalidades e públicos.'),
(2, 'Fonética e Fonologia', 'https://www.todamateria.com.br/fonetica-fonologia/', 'Estude os sons da fala e as regras que regem a produção e percepção desses sons no português.'),
(2, 'Literatura Portuguesa', 'https://www.lendo.org/category/literatura-portuguesa/', 'Conheça os grandes autores e obras da literatura portuguesa, desde a época medieval até os dias atuais.'),
(2, 'Ortografia', 'https://www.soportugues.com.br/secoes/ortografia/', 'Aprenda as regras de ortografia da língua portuguesa, incluindo acentuação, uso de hífen e grafias corretas.'),
(2, 'Estilística', 'https://www.recantodasletras.com.br/artigos/2297435', 'Estude as variações de estilo na linguagem escrita e falada, e como elas afetam a comunicação e a interpretação de textos.'),
(2, 'Morfologia', 'https://www.soportugues.com.br/secoes/morfologia/', 'Explore a estrutura das palavras e os processos de formação de palavras na língua portuguesa.'),
(2, 'Análise Sintática', 'https://www.soportugues.com.br/secoes/sintaxe/', 'Aprenda a identificar e analisar as funções sintáticas das palavras e orações em frases complexas.'),
(3, 'Cálculo Diferencial e Integral', 'https://www.khanacademy.org/math/calculus-1', 'Estude os conceitos de derivadas e integrais, e suas aplicações em diversos campos da ciência e engenharia.'),
(3, 'Probabilidade e Estatística', 'https://www.coursera.org/learn/probability-statistics', 'Aprenda os princípios de probabilidade e estatística, e como aplicá-los na análise de dados.'),
(3, 'Matemática Discreta', 'https://www.coursera.org/learn/algorithms-graphs-data-structures', 'Explore os fundamentos da matemática discreta, incluindo teoria dos grafos, lógica e combinatória.'),
(3, 'Geometria Analítica', 'https://www.khanacademy.org/math/algebra/x2f8bb11595b61c86:analytic-geometry', 'Estude a representação de figuras geométricas no plano cartesiano e suas propriedades.'),
(3, 'Trigonometria', 'https://www.khanacademy.org/math/trigonometry', 'Conheça as relações entre os lados e ângulos de triângulos, e suas aplicações em problemas práticos.'),
(3, 'Matemática Financeira', 'https://www.coursera.org/learn/finance', 'Aprenda os conceitos de juros simples e compostos, amortização, e outras aplicações financeiras.'),
(3, 'Teoria dos Números', 'https://www.coursera.org/learn/introduction-to-mathematical-thinking', 'Estude as propriedades dos números inteiros e suas aplicações em criptografia e outros campos.'),
(3, 'Álgebra Linear', 'https://www.khanacademy.org/math/linear-algebra', 'Explore os conceitos de vetores, matrizes e sistemas lineares, e suas aplicações em diversas áreas.'),
(3, 'Cálculo Numérico', 'https://www.coursera.org/learn/intro-to-numerical-analysis', 'Aprenda técnicas de cálculo numérico para resolver problemas matemáticos complexos através de métodos computacionais.'),
(3, 'Equações Diferenciais', 'https://www.edx.org/course/differential-equations', 'Estude as equações que descrevem fenômenos dinâmicos e suas soluções.'),
(4, 'Anatomia Humana', 'https://www.coursera.org/learn/anatomy', 'Explore a estrutura do corpo humano, incluindo ossos, músculos e sistemas orgânicos.'),
(4, 'Fisiologia Humana', 'https://www.edx.org/course/physiology', 'Estude as funções e processos dos sistemas orgânicos no corpo humano.'),
(4, 'Ecologia', 'https://www.coursera.org/learn/ecology', 'Conheça as interações entre os organismos e seus ambientes, e os princípios que governam os ecossistemas.'),
(4, 'Genética', 'https://www.coursera.org/learn/genetics-evolution', 'Explore os fundamentos da hereditariedade e as bases moleculares da genética.'),
(4, 'Microbiologia', 'https://www.coursera.org/learn/microbiology', 'Estude os microrganismos, incluindo bactérias, vírus e fungos, e suas interações com os seres humanos e o meio ambiente.'),
(4, 'Química Geral', 'https://www.khanacademy.org/science/chemistry', 'Conheça os princípios básicos da química, incluindo a estrutura atômica, ligações químicas e reações.'),
(4, 'Bioquímica', 'https://www.coursera.org/learn/biochemistry', 'Explore as reações químicas que ocorrem nos organismos vivos, incluindo o metabolismo e a regulação bioquímica.'),
(4, 'Física Nuclear', 'https://www.coursera.org/learn/nuclear-physics', 'Estude os princípios da física nuclear, incluindo reações nucleares, radioatividade e aplicações da energia nuclear.'),
(4, 'Astronomia', 'https://www.coursera.org/learn/astronomy', 'Conheça os corpos celestes e os fenômenos do universo, incluindo estrelas, planetas e galáxias.'),
(4, 'Geologia', 'https://www.coursera.org/learn/geology', 'Explore a composição, estrutura e processos que moldam a Terra, incluindo tectônica de placas e formação de rochas.'),
(5, 'Eletrônica Básica', 'https://www.coursera.org/learn/electronics', 'Aprenda os princípios da eletrônica, incluindo componentes, circuitos e aplicações básicas.'),
(5, 'Mecânica dos Fluidos', 'https://www.coursera.org/learn/fluid-mechanics', 'Estude o comportamento dos fluidos em repouso e em movimento, e suas aplicações em engenharia e física.'),
(5, 'Termodinâmica', 'https://www.coursera.org/learn/thermodynamics', 'Conheça os princípios da termodinâmica, incluindo a análise de sistemas e processos termodinâmicos.'),
(5, 'Desenho Técnico', 'https://www.coursera.org/learn/technical-drawing', 'Aprenda as técnicas de desenho técnico utilizadas para representar objetos e estruturas em engenharia e arquitetura.'),
(5, 'Sistemas Operacionais', 'https://www.udacity.com/course/operating-systems--ud923', 'Estude os princípios e funcionalidades dos sistemas operacionais, incluindo gerenciamento de processos, memória e dispositivos.'),
(5, 'Automação Industrial', 'https://www.coursera.org/learn/industrial-automation', 'Explore as tecnologias e sistemas utilizados na automação de processos industriais, incluindo controladores lógicos programáveis (CLPs) e robótica.'),
(5, 'Circuitos Elétricos', 'https://www.coursera.org/learn/circuits', 'Estude os princípios e técnicas para análise de circuitos elétricos, incluindo leis de Kirchhoff e métodos de resolução de circuitos.'),
(5, 'Engenharia de Software', 'https://www.coursera.org/specializations/software-development', 'Conheça os métodos e práticas para o desenvolvimento de software de alta qualidade, incluindo ciclo de vida de desenvolvimento e metodologias ágeis.'),
(5, 'Projeto de Sistemas Digitais', 'https://www.coursera.org/learn/digital-systems', 'Explore o design e implementação de sistemas digitais, incluindo lógica combinacional e sequencial, e uso de FPGAs.'),
(1, 'Desenvolvimento Web Full Stack', 'https://www.udacity.com/course/full-stack-web-developer-nanodegree--nd0044', 'Este curso abrange o desenvolvimento completo de aplicações web, incluindo front-end e back-end.'),
(1, 'Desenvolvimento de Aplicativos Android', 'https://developer.android.com/courses', 'Aprenda a criar aplicativos para Android com práticas recomendadas e ferramentas modernas.'),
(1, 'Desenvolvimento de Aplicativos iOS', 'https://developer.apple.com/learn/curriculum/', 'Desenvolva aplicativos para iOS utilizando Swift e Xcode.'),
(1, 'Machine Learning', 'https://www.coursera.org/learn/machine-learning', 'Este curso aborda os conceitos básicos e avançados de aprendizado de máquina, incluindo algoritmos de regressão e classificação.'),
(1, 'Deep Learning', 'https://www.coursera.org/specializations/deep-learning', 'Aprenda sobre redes neurais profundas e suas aplicações em visão computacional e processamento de linguagem natural.'),
(1, 'Desenvolvimento com React', 'https://reactjs.org/', 'Explore o desenvolvimento de interfaces de usuário com a biblioteca React.'),
(1, 'Desenvolvimento com Angular', 'https://angular.io/start', 'Aprenda a criar aplicações web dinâmicas utilizando o framework Angular.'),
(1, 'Desenvolvimento com Vue.js', 'https://vuejs.org/', 'Descubra como utilizar Vue.js para construir interfaces de usuário reativas.'),
(1, 'Desenvolvimento de APIs com Node.js', 'https://www.udemy.com/course/the-complete-nodejs-developer-course-2/', 'Crie e gerencie APIs robustas utilizando Node.js e Express.'),
(1, 'Desenvolvimento com Django', 'https://www.djangoproject.com/start/', 'Desenvolva aplicações web rápidas e seguras com o framework Django.'),
(1, 'Desenvolvimento com Flask', 'https://flask.palletsprojects.com/en/2.0.x/tutorial/', 'Aprenda a construir aplicações web leves utilizando o microframework Flask.'),
(1, 'Desenvolvimento com Ruby on Rails', 'https://rubyonrails.org/', 'Crie aplicações web com o framework Ruby on Rails, conhecido por sua simplicidade e produtividade.'),
(1, 'Desenvolvimento com Spring Boot', 'https://spring.io/projects/spring-boot', 'Aprenda a criar aplicações Java robustas com o framework Spring Boot.'),
(1, 'Big Data', 'https://www.coursera.org/specializations/big-data', 'Estude as tecnologias e técnicas utilizadas para gerenciar e analisar grandes volumes de dados.'),
(1, 'Análise de Dados com Python', 'https://www.datacamp.com/tracks/data-scientist-with-python', 'Utilize Python para analisar dados e extrair insights valiosos.'),
(1, 'Análise de Dados com R', 'https://www.coursera.org/specializations/data-science-r', 'Aprenda a utilizar a linguagem R para análise estatística e visualização de dados.'),
(1, 'Visualização de Dados', 'https://www.coursera.org/learn/dataviz-d3js', 'Crie visualizações interativas de dados utilizando D3.js e outras ferramentas.'),
(1, 'Blockchain', 'https://www.coursera.org/specializations/blockchain', 'Explore a tecnologia blockchain e suas aplicações em criptomoedas e contratos inteligentes.'),
(1, 'Computação em Nuvem', 'https://www.coursera.org/specializations/cloud-computing', 'Estude os princípios e práticas da computação em nuvem, incluindo AWS, Azure e Google Cloud.'),
(1, 'Kubernetes', 'https://www.coursera.org/learn/google-kubernetes-engine', 'Gerencie contêineres e orquestre serviços em escala com Kubernetes.'),
(2, 'Análise Literária', 'https://www.edx.org/course/literary-analysis', 'Desenvolva habilidades de análise crítica para interpretar obras literárias de diferentes gêneros e períodos.'),
(2, 'Teoria da Literatura', 'https://www.coursera.org/learn/literary-theory', 'Estude as principais teorias e abordagens para a análise e interpretação de textos literários.'),
(2, 'Redação Acadêmica', 'https://www.coursera.org/learn/academic-writing', 'Aprenda técnicas de escrita acadêmica para produzir textos claros, coerentes e bem estruturados.'),
(2, 'Literatura Infantil', 'https://www.coursera.org/learn/childrens-literature', 'Explore os temas, estilos e importância da literatura infantil na formação de jovens leitores.'),
(2, 'Poesia Brasileira', 'https://www.coursera.org/learn/poetry', 'Estude a poesia brasileira, desde seus primeiros registros até as manifestações contemporâneas.'),
(2, 'Linguística Aplicada', 'https://www.coursera.org/learn/applied-linguistics', 'Explore a aplicação dos conhecimentos linguísticos em contextos educacionais, tecnológicos e sociais.'),
(2, 'Linguística Histórica', 'https://www.coursera.org/learn/historical-linguistics', 'Estude a evolução das línguas e os processos de mudança linguística ao longo do tempo.'),
(2, 'Literatura Comparada', 'https://www.coursera.org/learn/comparative-literature', 'Compare e contraste obras literárias de diferentes culturas e épocas, identificando temas e estilos comuns.'),
(2, 'Ensino de Português', 'https://www.coursera.org/learn/teaching-portuguese', 'Aprenda métodos e estratégias para ensinar a língua portuguesa de forma eficaz.'),
(2, 'Retórica e Argumentação', 'https://www.coursera.org/learn/rhetoric-argumentation', 'Desenvolva habilidades de argumentação e persuasão através do estudo da retórica.'),
(2, 'Gramática Avançada', 'https://www.coursera.org/learn/advanced-grammar', 'Aprofunde seus conhecimentos em gramática avançada da língua portuguesa, incluindo sintaxe complexa e nuances semânticas.'),
(2, 'Leitura Crítica', 'https://www.coursera.org/learn/critical-reading', 'Desenvolva habilidades de leitura crítica para analisar e interpretar textos de maneira mais profunda.'),
(3, 'Álgebra Abstrata', 'https://www.coursera.org/learn/abstract-algebra', 'Explore os conceitos avançados de álgebra, incluindo grupos, anéis e corpos.'),
(3, 'Topologia', 'https://www.coursera.org/learn/topology', 'Estude as propriedades topológicas dos espaços e suas aplicações em diferentes áreas da matemática.'),
(3, 'Geometria Diferencial', 'https://www.coursera.org/learn/differential-geometry', 'Conheça as técnicas e conceitos da geometria diferencial, incluindo curvas, superfícies e variedades.'),
(3, 'Análise Real', 'https://www.coursera.org/learn/real-analysis', 'Aprofunde-se na teoria dos números reais, funções, limites, continuidade e integrais.'),
(3, 'Análise Complexa', 'https://www.coursera.org/learn/complex-analysis', 'Estude as funções de uma variável complexa e suas aplicações em matemática e física.'),
(3, 'Lógica Matemática', 'https://www.coursera.org/learn/mathematical-logic', 'Explore os fundamentos da lógica matemática, incluindo teoria da prova, modelos e computabilidade.'),
(3, 'Métodos Numéricos', 'https://www.coursera.org/learn/numerical-methods', 'Aprenda técnicas numéricas para resolver equações diferenciais, interpolação e otimização.'),
(3, 'Teoria dos Grafos', 'https://www.coursera.org/learn/graph-theory', 'Estude os princípios e aplicações da teoria dos grafos em redes e algoritmos.'),
(3, 'Processos Estocásticos', 'https://www.coursera.org/learn/stochastic-processes', 'Explore os modelos e aplicações de processos estocásticos em finanças, ciência e engenharia.'),
(3, 'Teoria do Caos', 'https://www.coursera.org/learn/chaos-theory', 'Conheça os princípios da teoria do caos e suas implicações em sistemas dinâmicos.'),
(3, 'Matemática Computacional', 'https://www.coursera.org/learn/computational-mathematics', 'Estude os algoritmos e técnicas computacionais para resolver problemas matemáticos complexos.'),
(3, 'Modelagem Matemática', 'https://www.coursera.org/learn/mathematical-modeling', 'Aprenda a criar e analisar modelos matemáticos para representar fenômenos do mundo real.'),
(4, 'Botânica', 'https://www.coursera.org/learn/botany', 'Explore o mundo das plantas, incluindo sua classificação, fisiologia e ecologia.'),
(4, 'Zoologia', 'https://www.coursera.org/learn/zoology', 'Estude a diversidade animal, suas adaptações, comportamento e evolução.'),
(4, 'Bioinformática', 'https://www.coursera.org/specializations/bioinformatics', 'Aprenda a aplicar técnicas computacionais para analisar dados biológicos e genômas'),
(5, 'Introdução à Eletrônica', 'https://www.coursera.org/learn/electronics', 'Este curso oferece uma introdução aos princípios básicos da eletrônica, incluindo componentes eletrônicos e circuitos.'),
(5, 'Automação Industrial', 'https://www.coursera.org/learn/industrial-automation', 'Explore os sistemas e técnicas de automação utilizados na indústria, incluindo sensores, atuadores e CLPs.'),
(5, 'Controle de Processos', 'https://www.udemy.com/course/learn-plc-programming-from-scratch/', 'Aprenda a programar controladores lógicos programáveis (CLPs) para automatizar processos industriais.'),
(5, 'Instrumentação Industrial', 'https://www.coursera.org/learn/process-instrumentation', 'Estude os princípios e dispositivos de medição utilizados na instrumentação de processos industriais.'),
(5, 'Desenho Técnico', 'https://www.coursera.org/learn/engineering-drawing', 'Aprenda as técnicas de representação gráfica utilizadas no desenho técnico de projetos e produtos.'),
(5, 'Gestão da Qualidade', 'https://www.udemy.com/course/gestao-da-qualidade/', 'Explore os conceitos e ferramentas utilizados na gestão da qualidade de produtos e processos industriais.'),
(5, 'Manutenção Industrial', 'https://www.coursera.org/learn/industrial-maintenance', 'Estude as técnicas de manutenção preventiva e corretiva aplicadas em equipamentos industriais.'),
(5, 'Tecnologia Mecânica', 'https://www.edx.org/course/mechanical-technology', 'Conheça os princípios e aplicações da tecnologia mecânica em sistemas e máquinas.'),
(5, 'Tecnologia Elétrica', 'https://www.coursera.org/learn/electrical-technology', 'Explore os fundamentos da tecnologia elétrica, incluindo geração, distribuição e utilização de energia elétrica.'),
(5, 'Tecnologia de Materiais', 'https://www.coursera.org/learn/materials-science', 'Estude as propriedades e aplicações dos materiais utilizados na indústria, como metais, polímeros e cerâmicas.');

SELECT * FROM usuarios;
SELECT * FROM disciplinas;
SELECT * FROM usuarios_disciplinas;
SELECT * FROM materias;
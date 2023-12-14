# Hospital

Um pequeno hospital local busca desenvolver um novo sistema que atenda melhor às suas necessidades.

# Etapa 1- 

Analise a seguinte descrição e extraia dela os requisitos para o banco de dados:

O hospital necessita de um sistema para sua área clínica que ajude a controlar consultas realizadas. Os médicos podem ser generalistas, especialistas ou residentes e têm seus dados pessoais cadastrados em planilhas digitais. Cada médico pode ter uma ou mais especialidades, que podem ser pediatria, clínica geral, gastroenterologia e dermatologia. Alguns registros antigos ainda estão em formulário de papel, mas será necessário incluir esses dados no novo sistema.

Os pacientes também precisam de cadastro, contendo dados pessoais (nome, data de nascimento, endereço, telefone e e-mail), documentos (CPF e RG) e convênio. Para cada convênio, são registrados nome, CNPJ e tempo de carência.

As consultas também têm sido registradas em planilhas, com data e hora de realização, médico responsável, paciente, valor da consulta ou nome do convênio, com o número da carteira. Também é necessário indicar na consulta qual a especialidade buscada pelo paciente.

Deseja-se ainda informatizar a receita do médico, de maneira que, no encerramento da consulta, ele possa registrar os medicamentos receitados, a quantidade e as instruções de uso. A partir disso, espera-se que o sistema imprima um relatório da receita ao paciente ou permita sua visualização via internet.


![Diagrama Hospital](https://github.com/IngridvS/Hospital/assets/142261730/c17e2837-fbf2-4925-a11c-27dcf28a3cf0)


# Etapa 2

Após a primeira versão do projeto de banco de dados para o sistema hospitalar, notou-se a necessidade de expansão das funcionalidades, incluindo alguns requisitos essenciais a essa versão do software. As funcionalidades em questão são para o controle na internação de pacientes. 

![Diagrama Hospital(1)](https://github.com/IngridvS/Hospital/assets/142261730/a07b37c4-5438-4e44-9088-c4679380d2b4)

![informações hospital](https://github.com/IngridvS/Hospital/assets/142261730/16ef8acd-3a96-478b-87aa-b8fd8eff5e40)

# Etapa3  - Alimentando o banco de dados
Crie scripts de povoamento das tabelas desenvolvidas na atividade anterior
Observe as seguintes atividades: 
Inclua ao menos dez médicos de diferentes especialidades.

Ao menos sete especialidades (considere a afirmação de que “entre as especialidades há pediatria, clínica geral, gastrenterologia e dermatologia”).
Inclua ao menos 15 pacientes.
Registre 20 consultas de diferentes pacientes e diferentes médicos (alguns pacientes realizam mais que uma consulta). As consultas devem ter ocorrido entre 01/01/2015 e 01/01/2022. Ao menos dez consultas devem ter receituário com dois ou mais medicamentos.
Inclua ao menos quatro convênios médicos, associe ao menos cinco pacientes e cinco consultas.
Criar entidade de relacionamento entre médico e especialidade. 
Criar Entidade de Relacionamento entre internação e enfermeiro. 
Arrumar a chave estrangeira do relacionamento entre convênio e médico.
Criar entidade entre internação e enfermeiro.
Colocar chaves estrangeira dentro da internação (Chaves Médico e Paciente).
Registre ao menos sete internações. Pelo menos dois pacientes devem ter se internado mais de uma vez. Ao menos três quartos devem ser cadastrados. As internações devem ter ocorrido entre 01/01/2015 e 01/01/2022.
Considerando que “a princípio o hospital trabalha com apartamentos, quartos duplos e enfermaria”, inclua ao menos esses três tipos com valores diferentes.
Inclua dados de dez profissionais de enfermaria. Associe cada internação a ao menos dois enfermeiros.
Os dados de tipo de quarto, convênio e especialidade são essenciais para a operação do sistema e, portanto, devem ser povoados assim que o sistema for instalado.

# Etapa 4
Pensando no banco que já foi criado para o Projeto do Hospital, realize algumas alterações nas tabelas e nos dados usando comandos de atualização e exclusão:

Crie um script que adicione uma coluna “em_atividade” para os médicos, indicando se ele ainda está atuando no hospital ou não. 

Crie um script para atualizar ao menos dois médicos como inativos e os demais em atividade.

![banco de dados_hospital](https://github.com/IngridvS/Hospital/assets/142261730/bf0baa88-af73-4b1a-a8e7-050cae672c14)


# Etapa 5

Crie um script e nele inclua consultas que retornem:

Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.
Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.
Receituário completo da primeira consulta registrada com receituário associado.
Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio).
Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.
Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.
Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta.
Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.
Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou.
Todos os médicos que tenham "Gabriel" no nome. 
Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação.








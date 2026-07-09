## Casos de Testes - Register
9 de julho de 2026

Ana Beatriz Pimentel Soares

## Informações Gerais
Aplicação: http://demo.automationtesting.in/Register.html

Tipo de Teste: Funcional

Objetivo: Validar o funcionamento do formulário de cadastro, verificando regras de negócio, validações dos campos e comportamento da aplicação.

---

## CT-001 – Cadastro com dados válidos
Objetivo: Validar que o usuário consegue preencher corretamente todos os campos obrigatórios do formulário.
Pré-condições:
•	A página de cadastro deve estar acessível.
Passos:
1.	Acessar a página de cadastro.
2.	Preencher todos os campos obrigatórios com dados válidos.
3.	Selecionar gênero, hobbies, idioma, skill, país e data de nascimento.
4.	Informar senha e confirmação de senha iguais.
5.	Selecionar uma imagem válida.
6.	Clicar em Submit.

Dados de Teste:

Campo -> Valor

First Name: Ana

Last Name: Soares

Email: ana@email.com

Phone: 92999999999

Password: Teste@123

Confirm Password: Teste@123

Resultado Esperado:
O formulário deve ser enviado com sucesso e o usuário deve ser direcionado para a próxima tela ou receber uma mensagem de confirmação.

---

## CT-002 – Validação de campos obrigatórios
Objetivo: Verificar se o sistema impede o envio do formulário sem o preenchimento dos campos obrigatórios.
Pré-condições:
•	Página carregada.
Passos:
1.	Abrir a aplicação.
2.	Não preencher nenhum campo.
3.	Clicar em Submit.

Resultado Esperado:
O sistema deve impedir o envio do formulário e apresentar mensagens claras indicando todos os campos obrigatórios.

---

## CT-003 – Validação de e-mail inválido
Objetivo: Verificar se o sistema rejeita e-mails com domínio inválido.
Pré-condições:
•	Página carregada.
Passos:
1.	Preencher os campos obrigatórios.
2.	Informar o e-mail usuario@teste.
3.	Submeter o formulário.

Resultado Esperado:
O sistema deve rejeitar o cadastro e informar que o e-mail é inválido.

---

## CT-004 – Validação de senha diferente da confirmação
Objetivo: Garantir que os campos Password e Confirm Password possuam o mesmo valor.
Pré-condições:
•	Página carregada.
Passos:
1.	Preencher todos os campos obrigatórios.
2.	Informar:
o	Password: Senha@123
o	Confirm Password: Senha@321
3.	Clicar em Submit.

Resultado Esperado:
O sistema deve impedir o cadastro e apresentar mensagem informando que as senhas não coincidem.


---

## CT-005 – Validação de senha mínima
Objetivo: Verificar se existe política mínima para criação de senha.
Pré-condições:
•	Página carregada.
Passos:
1.	Informar uma senha composta por apenas um caractere.
2.	Confirmar a mesma senha.
3.	Submeter o formulário.

Resultado Esperado:
O sistema deve rejeitar a senha e informar os requisitos mínimos de segurança.

---

## CT-006 – Upload de arquivo
Objetivo: Validar os formatos permitidos para upload de imagem.
Pré-condições:
•	Página carregada.
Passos:
1.	Selecionar um arquivo PDF.
2.	Repetir o teste com DOCX, TXT e PPTX.

Resultado Esperado:
O sistema deve aceitar apenas arquivos de imagem compatíveis (JPG, JPEG ou PNG).

---

## CT-007 – Validação da data de nascimento
Objetivo: Verificar se o sistema aceita apenas datas válidas.
Pré-condições:
•	Página carregada.
Passos:
1.	Selecionar:
o	Dia: 31
o	Mês: Fevereiro
o	Ano: 2020
2.	Continuar o cadastro.

Resultado Esperado:
O sistema deve impedir a seleção ou submissão de datas inexistentes.


---

## CT-008 – Validação do campo Phone
Objetivo: Verificar o comportamento do campo Phone para diferentes formatos de entrada.
Pré-condições:
•	Página carregada.
Passos:
1.	Informar letras.
2.	Informar símbolos.
3.	Informar número com quantidade inferior ao esperado.
4.	Informar número com quantidade superior ao esperado.

Resultado Esperado:
O sistema deve aceitar apenas números dentro do formato estabelecido.

---

## CT-009 – Seleção do campo Country
Objetivo: Verificar se é possível selecionar corretamente um país.
Pré-condições:
•	Página carregada.
Passos:
1.	Preencher os demais campos.
2.	Selecionar um país.
3.	Submeter o formulário.

Resultado Esperado:
O sistema deve permitir a seleção do país e concluir o cadastro normalmente.

---

## CT-010 – Seleção de idiomas
Objetivo: Verificar o funcionamento do componente de seleção de idiomas.
Pré-condições:
•	Página carregada.
Passos:
1.	Abrir a lista de idiomas.
2.	Selecionar dois idiomas.
3.	Fechar a lista.
4.	Abrir novamente.

Resultado Esperado:
Os idiomas selecionados devem permanecer corretamente registrados e visíveis para o usuário.

---



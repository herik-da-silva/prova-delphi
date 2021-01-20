PROVA DELPHI

.exe está contido dentro de .\Win32\Debug\


Questão 01)

1 - O arquivo .bpg “Borland Project Group” é da era Delphi <= 7, para desenvolvimento da demanda utilizei Delphi 10.4, que utiliza ‘Group Project’ com extensão .grouproj (Delphi >= era 2007).

2 - Utilizei o ‘Designtime and Runtime’, pois tive dificuldades em fazer o registro do componente TspQuery pelo Designtime.

Questão 03)

1 - A questão não especificava se os projetos poderiam vir com valor zerados, desta forma, no momento de popular a tabela fiz um tratamento para não deixar gerar valores zerados.

2 - A questão pedia para gerar números aleatórios, porém, mantive a coluna “idProjeto” de forma crescente, somente a fim lógico.
Caso seja necessário gerar aleatoriamente, basta substituir o “11-i” por “Random(100)”. 

cdsProjetos.FieldByName('idProjeto').Value := 11-i;

Testes Unitários)

Para o correto funcionamento dos testes unitários, necessita ser alterado duas propriedades dos forms (FormStyle, WindowState), pois os testes criam a instância da classe que será testada e a propriedade MDICHILD faz com que seja necessário instanciar o form pai.

Desse modo as propriedades dos forms fTarefa1, fTarefa2 e fTarefa3 devem ficar assim:

FormStyle := fsNormal;
WindowState := wsNormal;

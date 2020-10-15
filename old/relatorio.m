
%%
function relatorio(dados)
    alunos = struct('Matricula',[],'Nome',[],'Idade',[],'Curso',[],'Turma',[],'Turno',[],'Situacao',[]);
    for i=1:size(dados,1)
        alunos(i).Matricula = dados(i,1);
        alunos(i).Nome=dados(i,2);
        alunos(i).Idade=dados(i,3);
        alunos(i).Curso=dados(i,4);
        alunos(i).Turma=dados(i,5);
        alunos(i).Turno=dados(i,6);
        alunos(i).Situacao=dados(i,7);
    end
    aluno = input('numero do registro: ');
    disp(alunos(aluno));
end
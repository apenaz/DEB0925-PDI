
%%
function relatorio(dados)
    aluno = struct('Matricula',[],'Nome',[],'Idade',[],'Curso',[],'Turma',[],'Turno',[],'Situacao',[]);
    for i=1:size(dados,1)
        aluno(i).Matricula = dados(i,1);
        aluno(i).Nome=dados(i,2);
        aluno(i).Idade=dados(i,3);
        aluno(i).Curso=dados(i,4);
        aluno(i).Turma=dados(i,5);
        aluno(i).Turno=dados(i,6);
        aluno(i).Situacao=dados(i,7);    
    end
    disp(aluno(1));
end
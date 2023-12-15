SELECT 
    Localizacao_Evento, 
    COUNT(tb_Colaboracao.ID) as Contagem_Colaboracoes
FROM 
    tb_Laboratorio_Inovacao
JOIN 
    tb_Projeto_e_Desafio ON tb_Laboratorio_Inovacao.ID = tb_Projeto_e_Desafio.ID
JOIN 
    tb_Colaboracao ON tb_Projeto_e_Desafio.ID = tb_Colaboracao.ID_Projeto
GROUP BY 
    Localizacao_Evento
ORDER BY 
    Contagem_Colaboracoes DESC;
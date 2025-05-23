-- Quais são os nomes e e-mails de todos os clientes cadastrados?

SELECT nome, email FROM cliente;


-- Quais voos estão marcados entre às 12h10 e às 12h20?
SELECT *
FROM voos
WHERE horario >= '12:10:00' and horario <= '12:20:00';


-- Quais clientes compraram passagens para a cidade de Maceió - AL? (mostrando nome do cliente, data da passagem e id do voo)

SELECT 
    c.nome,
    p.data,
    p.id_voo
FROM 
    cliente c
INNER JOIN passagem p ON c.cpf = p.cpf_cliente
INNER JOIN voos v ON p.id_voo = v.id_voo
INNER JOIN aeroporto a ON v.id_aeroporto = a.id_aeroporto
WHERE 
    a.cidade = 'Maceió';


-- Liste todos os voos do dia 2025-05-17?

SELECT 
    v.id_voo,
    v.horario,
    p.data
FROM 
    voos v
INNER JOIN passagem p ON v.id_voo = p.id_voo
WHERE 
    p.data = '2025-04-23';


-- Quais voos existem, mesmo que não tenham passagens vendidas?

SELECT v.id_voo, p.id_passagem
FROM voos v
LEFT JOIN passagem p ON v.id_voo = p.id_voo;


-- Quais voos foram agendados, mesmo que o avião não tenha mais dados de modelo nem companhia?

SELECT v.id_voo, a.modelo, a.companhia
FROM avioes a
RIGHT JOIN voos v ON a.id_aviao = v.id_aviao;


-- Liste todos os voos e todas as passagens, inclusive os voos sem passagens e as passagens com voos não registrados (inconsistência). 

SELECT 
    v.id_voo AS voo_id,
    v.horario,
    p.id_passagem AS passagem_id,
    p.data AS data_passagem
FROM voos v
FULL OUTER JOIN passagem p ON v.id_voo = p.id_voo;


-- Quais são os nomes dos clientes, suas poltronas, companhia, o tipo da classe de voo comprada e o nome do aeroporto?

SELECT 
    c.nome AS nome_cliente,
    p.poltrona AS numero_poltrona,
    a.companhia AS nome_companhia,
    p.classe AS tipo_classe,
    ap.nome AS nome_aeroporto
FROM cliente c
JOIN passagem p ON c.cpf = p.cpf_cliente
JOIN voos v ON p.id_voo = v.id_voo
JOIN avioes a ON v.id_aviao = a.id_aviao
JOIN aeroporto ap ON v.id_aeroporto = ap.id_aeroporto;


-- Quais são os voos operados pela companhia "LATAM" que têm capacidade maior que 150 lugares?

SELECT 
    v.id_voo,
    v.horario,
    a.modelo,
    a.capacidade,
    a.companhia
FROM voos v
JOIN avioes a ON v.id_aviao = a.id_aviao
WHERE a.companhia = 'LATAM'
  AND a.capacidade > 150;
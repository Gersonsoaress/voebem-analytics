SELECT 'dim_aeroporto' AS tabela, COUNT(*) AS registros
FROM voebem.gold.dim_aeroporto

UNION ALL

SELECT 'fato_voos', COUNT(*)
FROM voebem.gold.fato_voos

UNION ALL

SELECT 'obt_voos', COUNT(*)
FROM voebem.gold.obt_voos;
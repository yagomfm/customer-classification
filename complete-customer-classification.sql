WITH base_data AS (
SELECT    
    CustomerID AS POC_ID,
    -- Ano 2023
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 1 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2  -- Compra a crédito (pode ter cash também)
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1  -- Apenas compra à vista
                ELSE 0  -- Sem nenhum tipo de compra
            END
        ELSE NULL END) AS Jan_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 2 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Feb_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 3 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Mar_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 4 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Apr_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 5 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS May_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 6 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Jun_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 7 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Jul_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 8 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Aug_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 9 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Sep_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 10 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Oct_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 11 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Nov_23,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2023 AND MONTH(StatementDate) = 12 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Dec_23,
    -- Ano 2024
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 1 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2  -- Compra a crédito (pode ter cash também)
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1  -- Apenas compra à vista
                ELSE 0  -- Sem nenhum tipo de compra
            END
        ELSE NULL END) AS Jan_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 2 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Feb_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 3 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Mar_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 4 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Apr_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 5 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS May_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 6 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Jun_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 7 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Jul_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 8 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Aug_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 9 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Sep_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 10 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Oct_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 11 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Nov_24,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2024 AND MONTH(StatementDate) = 12 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Dec_24,
    -- Ano 2025
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2025 AND MONTH(StatementDate) = 1 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Jan_25,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2025 AND MONTH(StatementDate) = 2 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Feb_25,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2025 AND MONTH(StatementDate) = 3 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Mar_25,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2025 AND MONTH(StatementDate) = 4 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Apr_25,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2025 AND MONTH(StatementDate) = 5 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS May_25,
    MAX(CASE 
        WHEN YEAR(StatementDate) = 2025 AND MONTH(StatementDate) = 6 THEN 
            CASE 
                WHEN PositiveCreditSales > 0 THEN 2
                WHEN PositiveTotalSales > 0 AND PositiveCreditSales = 0 THEN 1
                ELSE 0
            END
        ELSE NULL END) AS Jun_25
FROM 
    credit.maz_active_customers
WHERE 
    CountryCode = 'MX'
GROUP BY 
    CustomerID
),

-- CTE para identificar clientes que foram MAU = 1 pelo menos uma vez
mau_customers AS (
    SELECT DISTINCT CustomerID
    FROM credit.maz_active_customers
    WHERE CountryCode = 'MX' AND MAU = 1
    AND CustomerType IN ('Modelorama', 'Tradicional')
),

-- Helper CTE para calcular métricas de atividade e histórico de crédito
activity_metrics AS (
SELECT 
    b.POC_ID,
    COALESCE(b.Jan_23, 0) AS Jan_23, COALESCE(b.Feb_23, 0) AS Feb_23, COALESCE(b.Mar_23, 0) AS Mar_23, COALESCE(b.Apr_23, 0) AS Apr_23, COALESCE(b.May_23, 0) AS May_23, COALESCE(b.Jun_23, 0) AS Jun_23, COALESCE(b.Jul_23, 0) AS Jul_23, COALESCE(b.Aug_23, 0) AS Aug_23, COALESCE(b.Sep_23, 0) AS Sep_23, COALESCE(b.Oct_23, 0) AS Oct_23, COALESCE(b.Nov_23, 0) AS Nov_23, COALESCE(b.Dec_23, 0) AS Dec_23,
    COALESCE(b.Jan_24, 0) AS Jan_24, COALESCE(b.Feb_24, 0) AS Feb_24, COALESCE(b.Mar_24, 0) AS Mar_24, COALESCE(b.Apr_24, 0) AS Apr_24, COALESCE(b.May_24, 0) AS May_24, COALESCE(b.Jun_24, 0) AS Jun_24, COALESCE(b.Jul_24, 0) AS Jul_24, COALESCE(b.Aug_24, 0) AS Aug_24, COALESCE(b.Sep_24, 0) AS Sep_24, COALESCE(b.Oct_24, 0) AS Oct_24, COALESCE(b.Nov_24, 0) AS Nov_24, COALESCE(b.Dec_24, 0) AS Dec_24,
    COALESCE(b.Jan_25, 0) AS Jan_25, COALESCE(b.Feb_25, 0) AS Feb_25, COALESCE(b.Mar_25, 0) AS Mar_25, COALESCE(b.Apr_25, 0) AS Apr_25, COALESCE(b.May_25, 0) AS May_25, COALESCE(b.Jun_25, 0) AS Jun_25,
    
    -- Contadores de atividade CRÉDITO (valor 2) nos últimos 12 meses para cada mês de 2023
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END) AS Jan_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END) AS Feb_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END) AS Mar_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END) AS Apr_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END) AS May_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END) AS Jun_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END) AS Jul_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END) AS Aug_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END) AS Sep_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END) AS Oct_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END) AS Nov_23_credit_count,
    (CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END) AS Dec_23_credit_count,
    
    -- Contadores de atividade CRÉDITO (valor 2) nos últimos 12 meses para cada mês de 2024
    (CASE WHEN b.Feb_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END) AS Jan_24_credit_count,
    (CASE WHEN b.Mar_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END) AS Feb_24_credit_count,
    (CASE WHEN b.Apr_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END) AS Mar_24_credit_count,
    (CASE WHEN b.May_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END) AS Apr_24_credit_count,
    (CASE WHEN b.Jun_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END) AS May_24_credit_count,
    (CASE WHEN b.Jul_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END) AS Jun_24_credit_count,
    (CASE WHEN b.Aug_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END) AS Jul_24_credit_count,
    (CASE WHEN b.Sep_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END) AS Aug_24_credit_count,
    (CASE WHEN b.Oct_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END) AS Sep_24_credit_count,
    (CASE WHEN b.Nov_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_24 = 2 THEN 1 ELSE 0 END) AS Oct_24_credit_count,
    (CASE WHEN b.Dec_23 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_24 = 2 THEN 1 ELSE 0 END) AS Nov_24_credit_count,
    (CASE WHEN b.Jan_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_24 = 2 THEN 1 ELSE 0 END) AS Dec_24_credit_count,
    
    -- Contadores de atividade CRÉDITO (valor 2) nos últimos 12 meses para cada mês de 2025
    (CASE WHEN b.Feb_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_25 = 2 THEN 1 ELSE 0 END) AS Jan_25_credit_count,
    (CASE WHEN b.Mar_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_25 = 2 THEN 1 ELSE 0 END) AS Feb_25_credit_count,
    (CASE WHEN b.Apr_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_25 = 2 THEN 1 ELSE 0 END) AS Mar_25_credit_count,
    (CASE WHEN b.May_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_25 = 2 THEN 1 ELSE 0 END) AS Apr_25_credit_count,
    (CASE WHEN b.Jun_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_25 = 2 THEN 1 ELSE 0 END) AS May_25_credit_count,
    (CASE WHEN b.Jul_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Aug_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Sep_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Oct_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Nov_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Dec_24 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jan_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Feb_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Mar_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Apr_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.May_25 = 2 THEN 1 ELSE 0 END + CASE WHEN b.Jun_25 = 2 THEN 1 ELSE 0 END) AS Jun_25_credit_count,
    
    -- Indicadores de histórico de crédito para 2023 (se já teve valor 2 alguma vez até o mês atual)
    CASE WHEN b.Jan_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_jan_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_feb_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_mar_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_apr_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_may_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_jun_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_jul_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_aug_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_sep_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_oct_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_nov_23,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 THEN 1 ELSE 0 END AS has_credit_history_dec_23,
    
    -- Indicadores de histórico de crédito para 2024 (agora incluindo 2023)
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_jan_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_feb_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_mar_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_apr_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_may_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_jun_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_jul_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_aug_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_sep_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 OR b.Oct_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_oct_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 OR b.Oct_24 = 2 OR b.Nov_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_nov_24,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 OR b.Oct_24 = 2 OR b.Nov_24 = 2 OR b.Dec_24 = 2 THEN 1 ELSE 0 END AS has_credit_history_dec_24,
    
    -- Indicadores de histórico de crédito para 2025
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 OR b.Oct_24 = 2 OR b.Nov_24 = 2 OR b.Dec_24 = 2 OR b.Jan_25 = 2 THEN 1 ELSE 0 END AS has_credit_history_jan_25,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 OR b.Oct_24 = 2 OR b.Nov_24 = 2 OR b.Dec_24 = 2 OR b.Jan_25 = 2 OR b.Feb_25 = 2 THEN 1 ELSE 0 END AS has_credit_history_feb_25,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 OR b.Oct_24 = 2 OR b.Nov_24 = 2 OR b.Dec_24 = 2 OR b.Jan_25 = 2 OR b.Feb_25 = 2 OR b.Mar_25 = 2 THEN 1 ELSE 0 END AS has_credit_history_mar_25,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 OR b.Oct_24 = 2 OR b.Nov_24 = 2 OR b.Dec_24 = 2 OR b.Jan_25 = 2 OR b.Feb_25 = 2 OR b.Mar_25 = 2 OR b.Apr_25 = 2 THEN 1 ELSE 0 END AS has_credit_history_apr_25,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 OR b.Oct_24 = 2 OR b.Nov_24 = 2 OR b.Dec_24 = 2 OR b.Jan_25 = 2 OR b.Feb_25 = 2 OR b.Mar_25 = 2 OR b.Apr_25 = 2 OR b.May_25 = 2 THEN 1 ELSE 0 END AS has_credit_history_may_25,
    CASE WHEN b.Jan_23 = 2 OR b.Feb_23 = 2 OR b.Mar_23 = 2 OR b.Apr_23 = 2 OR b.May_23 = 2 OR b.Jun_23 = 2 OR b.Jul_23 = 2 OR b.Aug_23 = 2 OR b.Sep_23 = 2 OR b.Oct_23 = 2 OR b.Nov_23 = 2 OR b.Dec_23 = 2 OR b.Jan_24 = 2 OR b.Feb_24 = 2 OR b.Mar_24 = 2 OR b.Apr_24 = 2 OR b.May_24 = 2 OR b.Jun_24 = 2 OR b.Jul_24 = 2 OR b.Aug_24 = 2 OR b.Sep_24 = 2 OR b.Oct_24 = 2 OR b.Nov_24 = 2 OR b.Dec_24 = 2 OR b.Jan_25 = 2 OR b.Feb_25 = 2 OR b.Mar_25 = 2 OR b.Apr_25 = 2 OR b.May_25 = 2 OR b.Jun_25 = 2 THEN 1 ELSE 0 END AS has_credit_history_jun_25

FROM base_data b
INNER JOIN mau_customers m ON b.POC_ID = m.CustomerID
)

SELECT 
    POC_ID,
    Jan_23, Feb_23, Mar_23, Apr_23, May_23, Jun_23, Jul_23, Aug_23, Sep_23, Oct_23, Nov_23, Dec_23,
    Jan_24, Feb_24, Mar_24, Apr_24, May_24, Jun_24, Jul_24, Aug_24, Sep_24, Oct_24, Nov_24, Dec_24,
    Jan_25, Feb_25, Mar_25, Apr_25, May_25, Jun_25,
    
    -- Jan_23 Classification - NOVA LÓGICA: New User apenas se NUNCA comprou a crédito antes
    CASE 
        WHEN Jan_23 = 2 AND has_credit_history_jan_23 = 1 THEN 'New User'  -- Primeira compra a crédito na história
        WHEN Jan_23 = 1 THEN 'No Credit History'
        ELSE 'No Purchase History'
    END AS Jan_23_Classification,
    
    -- Feb_23 Classification
    CASE 
        WHEN Feb_23 = 2 THEN
            CASE 
                WHEN has_credit_history_jan_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Feb_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Feb_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Feb_23 = 1 THEN 
            CASE 
                WHEN Jan_23 = 2 THEN 'Short Term Credit Churn'
                WHEN has_credit_history_feb_23 = 0 THEN 'No Credit History'
                ELSE 'Short Term Credit Churn'
            END
        WHEN Feb_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN Jan_23 = 1 AND has_credit_history_feb_23 = 0 THEN 'No Credit History'
                WHEN Jan_23 IN (1,2) AND has_credit_history_feb_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'No Purchase History'
            END
        ELSE 'No Purchase History'
    END AS Feb_23_Classification,
    
    -- Mar_23 Classification
    CASE 
        WHEN Mar_23 = 2 THEN
            CASE 
                WHEN has_credit_history_feb_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Mar_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Mar_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Mar_23 = 1 THEN 
            CASE 
                WHEN Feb_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN has_credit_history_mar_23 = 0 THEN 'No Credit History'
                ELSE 'Short Term Credit Churn'
            END
        WHEN Mar_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_mar_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1) THEN 'No Credit History'
                WHEN Feb_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_mar_23 = 1 THEN 'Short Term Company Churn'
                WHEN Feb_23 IN (1,2) AND has_credit_history_mar_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Mar_23_Classification,
    
    -- Apr_23 Classification
    CASE 
        WHEN Apr_23 = 2 THEN
            CASE 
                WHEN has_credit_history_mar_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Apr_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Apr_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Apr_23 = 1 THEN 
            CASE 
                WHEN Mar_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_apr_23 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Apr_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_apr_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1) THEN 'No Credit History'
                WHEN Mar_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_apr_23 = 1 THEN 'Short Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_apr_23 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_23 IN (1,2) AND has_credit_history_apr_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Apr_23_Classification,
    
    -- May_23 Classification
    CASE 
        WHEN May_23 = 2 THEN
            CASE 
                WHEN has_credit_history_apr_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN May_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN May_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN May_23 = 1 THEN 
            CASE 
                WHEN Apr_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Mar_23 = 2 AND Apr_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_may_23 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN May_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_may_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1) THEN 'No Credit History'
                WHEN Apr_23 = 0 AND Mar_23 IN (1,2) AND has_credit_history_may_23 = 1 THEN 'Short Term Company Churn'
                WHEN Mar_23 = 0 AND Apr_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_may_23 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Apr_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_may_23 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_23 IN (1,2) AND has_credit_history_may_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS May_23_Classification,
    
    -- Jun_23 Classification
    CASE 
        WHEN Jun_23 = 2 THEN
            CASE 
                WHEN has_credit_history_may_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Jun_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Jun_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Jun_23 = 1 THEN 
            CASE 
                WHEN May_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Apr_23 = 2 AND May_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Mar_23 = 2 AND Apr_23 IN (0,1) AND May_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_jun_23 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Jun_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_jun_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1) THEN 'No Credit History'
                WHEN May_23 = 0 AND Apr_23 IN (1,2) AND has_credit_history_jun_23 = 1 THEN 'Short Term Company Churn'
                WHEN Apr_23 = 0 AND May_23 = 0 AND Mar_23 IN (1,2) AND has_credit_history_jun_23 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_jun_23 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_jun_23 = 1 THEN 'Long Term Company Churn'
                WHEN May_23 IN (1,2) AND has_credit_history_jun_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Jun_23_Classification,
    
    -- Jul_23 Classification
    CASE 
        WHEN Jul_23 = 2 THEN
            CASE 
                WHEN has_credit_history_jun_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Jul_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Jul_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Jul_23 = 1 THEN 
            CASE 
                WHEN Jun_23 = 2 THEN 'Short Term Credit Churn'
                WHEN May_23 = 2 AND Jun_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Apr_23 = 2 AND May_23 IN (0,1) AND Jun_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_23 = 2 AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_jul_23 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Jul_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_jul_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1) THEN 'No Credit History'
                WHEN Jun_23 = 0 AND May_23 IN (1,2) AND has_credit_history_jul_23 = 1 THEN 'Short Term Company Churn'
                WHEN May_23 = 0 AND Jun_23 = 0 AND Apr_23 IN (1,2) AND has_credit_history_jul_23 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Mar_23 IN (1,2) AND has_credit_history_jul_23 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_jul_23 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_jul_23 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_23 IN (1,2) AND has_credit_history_jul_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Jul_23_Classification,
    
    -- Aug_23 Classification
    CASE 
        WHEN Aug_23 = 2 THEN
            CASE 
                WHEN has_credit_history_jul_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Aug_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Aug_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Aug_23 = 1 THEN 
            CASE 
                WHEN Jul_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Jun_23 = 2 AND Jul_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN May_23 = 2 AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_23 = 2 AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_23 = 2 AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_aug_23 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Aug_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_aug_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1) THEN 'No Credit History'
                WHEN Jul_23 = 0 AND Jun_23 IN (1,2) AND has_credit_history_aug_23 = 1 THEN 'Short Term Company Churn'
                WHEN Jun_23 = 0 AND Jul_23 = 0 AND May_23 IN (1,2) AND has_credit_history_aug_23 = 1 THEN 'Long Term Company Churn'
                WHEN May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Apr_23 IN (1,2) AND has_credit_history_aug_23 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Mar_23 IN (1,2) AND has_credit_history_aug_23 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_aug_23 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_aug_23 = 1 THEN 'Long Term Company Churn'
                WHEN Jul_23 IN (1,2) AND has_credit_history_aug_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Aug_23_Classification,
    
    -- Sep_23 Classification
    CASE 
        WHEN Sep_23 = 2 THEN
            CASE 
                WHEN has_credit_history_aug_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Sep_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Sep_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Sep_23 = 1 THEN 
            CASE 
                WHEN Aug_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Jul_23 = 2 AND Aug_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Jun_23 = 2 AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN May_23 = 2 AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_23 = 2 AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_23 = 2 AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_sep_23 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Sep_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_sep_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1) THEN 'No Credit History'
                WHEN Aug_23 = 0 AND Jul_23 IN (1,2) AND has_credit_history_sep_23 = 1 THEN 'Short Term Company Churn'
                WHEN Jul_23 = 0 AND Aug_23 = 0 AND Jun_23 IN (1,2) AND has_credit_history_sep_23 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND May_23 IN (1,2) AND has_credit_history_sep_23 = 1 THEN 'Long Term Company Churn'
                WHEN May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Apr_23 IN (1,2) AND has_credit_history_sep_23 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Mar_23 IN (1,2) AND has_credit_history_sep_23 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_sep_23 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_sep_23 = 1 THEN 'Long Term Company Churn'
                WHEN Aug_23 IN (1,2) AND has_credit_history_sep_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Sep_23_Classification,
    
    -- Oct_23 Classification
    CASE 
        WHEN Oct_23 = 2 THEN
            CASE 
                WHEN has_credit_history_sep_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Oct_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Oct_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Oct_23 = 1 THEN 
            CASE 
                WHEN Sep_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Aug_23 = 2 AND Sep_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Jul_23 = 2 AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jun_23 = 2 AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN May_23 = 2 AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_23 = 2 AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_23 = 2 AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_oct_23 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Oct_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_oct_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1) THEN 'No Credit History'
                WHEN Sep_23 = 0 AND Aug_23 IN (1,2) AND has_credit_history_oct_23 = 1 THEN 'Short Term Company Churn'
                WHEN Aug_23 = 0 AND Sep_23 = 0 AND Jul_23 IN (1,2) AND has_credit_history_oct_23 = 1 THEN 'Long Term Company Churn'
                WHEN Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Jun_23 IN (1,2) AND has_credit_history_oct_23 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND May_23 IN (1,2) AND has_credit_history_oct_23 = 1 THEN 'Long Term Company Churn'
                WHEN May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Apr_23 IN (1,2) AND has_credit_history_oct_23 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Mar_23 IN (1,2) AND has_credit_history_oct_23 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_oct_23 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_oct_23 = 1 THEN 'Long Term Company Churn'
                WHEN Sep_23 IN (1,2) AND has_credit_history_oct_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Oct_23_Classification,
    
    -- Nov_23 Classification
    CASE 
        WHEN Nov_23 = 2 THEN
            CASE 
                WHEN has_credit_history_oct_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Nov_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Nov_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Nov_23 = 1 THEN 
            CASE 
                WHEN Oct_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Sep_23 = 2 AND Oct_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Aug_23 = 2 AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jul_23 = 2 AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jun_23 = 2 AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN May_23 = 2 AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_23 = 2 AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_23 = 2 AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_nov_23 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Nov_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_nov_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1) THEN 'No Credit History'
                WHEN Oct_23 = 0 AND Sep_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Short Term Company Churn'
                WHEN Sep_23 = 0 AND Oct_23 = 0 AND Aug_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Long Term Company Churn'
                WHEN Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Jul_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Long Term Company Churn'
                WHEN Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Jun_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND May_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Long Term Company Churn'
                WHEN May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Apr_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Mar_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Long Term Credit Churn'
                WHEN Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Long Term Company Churn'
                WHEN Oct_23 IN (1,2) AND has_credit_history_nov_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Nov_23_Classification,
    
    -- Dec_23 Classification
    CASE 
        WHEN Dec_23 = 2 THEN
            CASE 
                WHEN has_credit_history_nov_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Dec_23_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Dec_23_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Dec_23 = 1 THEN 
            CASE 
                WHEN Nov_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Oct_23 = 2 AND Nov_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Sep_23 = 2 AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Aug_23 = 2 AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jul_23 = 2 AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jun_23 = 2 AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN May_23 = 2 AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_23 = 2 AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_23 = 2 AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_dec_23 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Dec_23 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_dec_23 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1) THEN 'No Credit History'
                WHEN Nov_23 = 0 AND Oct_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Short Term Company Churn'
                WHEN Oct_23 = 0 AND Nov_23 = 0 AND Sep_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Long Term Company Churn'
                WHEN Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Aug_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Long Term Company Churn'
                WHEN Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Jul_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Long Term Company Churn'
                WHEN Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Jun_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND May_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Long Term Company Churn'
                WHEN May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Apr_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Mar_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Long Term Company Churn'
                WHEN Nov_23 IN (1,2) AND has_credit_history_dec_23 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Dec_23_Classification,
    
    -- Jan_24 Classification - NOVA LÓGICA: New User apenas se NUNCA comprou a crédito antes
    CASE 
        WHEN Jan_24 = 2 THEN
            CASE 
                WHEN has_credit_history_dec_23 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Jan_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Jan_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Jan_24 = 1 THEN 
            CASE 
                WHEN Dec_23 = 2 THEN 'Short Term Credit Churn'
                WHEN Nov_23 = 2 AND Dec_23 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Oct_23 = 2 AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Sep_23 = 2 AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Aug_23 = 2 AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jul_23 = 2 AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jun_23 = 2 AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN May_23 = 2 AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_23 = 2 AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_23 = 2 AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_23 = 2 AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_23 = 2 AND Feb_23 IN (0,1) AND Mar_23 IN (0,1) AND Apr_23 IN (0,1) AND May_23 IN (0,1) AND Jun_23 IN (0,1) AND Jul_23 IN (0,1) AND Aug_23 IN (0,1) AND Sep_23 IN (0,1) AND Oct_23 IN (0,1) AND Nov_23 IN (0,1) AND Dec_23 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_jan_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Jan_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_jan_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1) THEN 'No Credit History'
                WHEN Dec_23 = 0 AND Nov_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Short Term Company Churn'
                WHEN Nov_23 = 0 AND Dec_23 = 0 AND Oct_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN Oct_23 = 0 AND Nov_23 = 0 AND Dec_23 = 0 AND Sep_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Dec_23 = 0 AND Aug_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Dec_23 = 0 AND Jul_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Dec_23 = 0 AND Jun_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Dec_23 = 0 AND May_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Dec_23 = 0 AND Apr_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Dec_23 = 0 AND Mar_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Dec_23 = 0 AND Feb_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_23 = 0 AND Mar_23 = 0 AND Apr_23 = 0 AND May_23 = 0 AND Jun_23 = 0 AND Jul_23 = 0 AND Aug_23 = 0 AND Sep_23 = 0 AND Oct_23 = 0 AND Nov_23 = 0 AND Dec_23 = 0 AND Jan_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Long Term Company Churn'
                WHEN Dec_23 IN (1,2) AND has_credit_history_jan_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Jan_24_Classification,
    
    -- Feb_24 Classification
    CASE 
        WHEN Feb_24 = 2 THEN
            CASE 
                WHEN has_credit_history_jan_24 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Feb_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Feb_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Feb_24 = 1 THEN 
            CASE 
                WHEN Jan_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Dec_23 = 2 AND Jan_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN has_credit_history_feb_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Feb_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_feb_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1) THEN 'No Credit History'
                WHEN Jan_24 = 0 AND Dec_23 IN (1,2) AND has_credit_history_feb_24 = 1 THEN 'Short Term Company Churn'
                WHEN Dec_23 = 0 AND Jan_24 = 0 AND Nov_23 IN (1,2) AND has_credit_history_feb_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jan_24 IN (1,2) AND has_credit_history_feb_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Feb_24_Classification,
    
    -- Mar_24 Classification
    CASE 
        WHEN Mar_24 = 2 THEN
            CASE 
                WHEN has_credit_history_feb_24 = 0 THEN 'New User'  -- Primeira compra a crédito na história
                WHEN Mar_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Mar_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Mar_24 = 1 THEN 
            CASE 
                WHEN Feb_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Jan_24 = 2 AND Feb_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN has_credit_history_mar_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Mar_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_mar_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1) THEN 'No Credit History'
                WHEN Feb_24 = 0 AND Jan_24 IN (1,2) AND has_credit_history_mar_24 = 1 THEN 'Short Term Company Churn'
                WHEN Jan_24 = 0 AND Feb_24 = 0 AND Dec_23 IN (1,2) AND has_credit_history_mar_24 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_24 IN (1,2) AND has_credit_history_mar_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Mar_24_Classification,
    
    -- Apr_24 Classification
    CASE 
        WHEN Apr_24 = 2 THEN
            CASE 
                WHEN has_credit_history_mar_24 = 0 THEN 'New User'
                WHEN Apr_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Apr_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Apr_24 = 1 THEN 
            CASE 
                WHEN Mar_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Feb_24 = 2 AND Mar_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Jan_24 = 2 AND Feb_24 IN (0,1) AND Mar_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_apr_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Apr_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) AND Mar_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_apr_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1 OR Mar_24 = 1) THEN 'No Credit History'
                WHEN Mar_24 = 0 AND Feb_24 IN (1,2) AND has_credit_history_apr_24 = 1 THEN 'Short Term Company Churn'
                WHEN Feb_24 = 0 AND Mar_24 = 0 AND Jan_24 IN (1,2) AND has_credit_history_apr_24 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_24 IN (1,2) AND has_credit_history_apr_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Apr_24_Classification,
    
    -- May_24 Classification
    CASE 
        WHEN May_24 = 2 THEN
            CASE 
                WHEN has_credit_history_apr_24 = 0 THEN 'New User'
                WHEN May_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN May_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN May_24 = 1 THEN 
            CASE 
                WHEN Apr_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Mar_24 = 2 AND Apr_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Feb_24 = 2 AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_24 = 2 AND Feb_24 IN (0,1) AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_may_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN May_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) AND Mar_24 NOT IN (1,2) AND Apr_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_may_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1 OR Mar_24 = 1 OR Apr_24 = 1) THEN 'No Credit History'
                WHEN Apr_24 = 0 AND Mar_24 IN (1,2) AND has_credit_history_may_24 = 1 THEN 'Short Term Company Churn'
                WHEN Mar_24 = 0 AND Apr_24 = 0 AND Feb_24 IN (1,2) AND has_credit_history_may_24 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_24 = 0 AND Mar_24 = 0 AND Apr_24 = 0 AND Jan_24 IN (1,2) AND has_credit_history_may_24 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_24 IN (1,2) AND has_credit_history_may_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS May_24_Classification,
    
    -- Jun_24 Classification
    CASE 
        WHEN Jun_24 = 2 THEN
            CASE 
                WHEN has_credit_history_may_24 = 0 THEN 'New User'
                WHEN Jun_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Jun_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Jun_24 = 1 THEN 
            CASE 
                WHEN May_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Apr_24 = 2 AND May_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Mar_24 = 2 AND Apr_24 IN (0,1) AND May_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_24 = 2 AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_24 = 2 AND Feb_24 IN (0,1) AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_jun_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Jun_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) AND Mar_24 NOT IN (1,2) AND Apr_24 NOT IN (1,2) AND May_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_jun_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1 OR Mar_24 = 1 OR Apr_24 = 1 OR May_24 = 1) THEN 'No Credit History'
                WHEN May_24 = 0 AND Apr_24 IN (1,2) AND has_credit_history_jun_24 = 1 THEN 'Short Term Company Churn'
                WHEN Apr_24 = 0 AND May_24 = 0 AND Mar_24 IN (1,2) AND has_credit_history_jun_24 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Feb_24 IN (1,2) AND has_credit_history_jun_24 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_24 = 0 AND Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jan_24 IN (1,2) AND has_credit_history_jun_24 = 1 THEN 'Long Term Company Churn'
                WHEN May_24 IN (1,2) AND has_credit_history_jun_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Jun_24_Classification,
    
    -- Jul_24 Classification
    CASE 
        WHEN Jul_24 = 2 THEN
            CASE 
                WHEN has_credit_history_jun_24 = 0 THEN 'New User'
                WHEN Jul_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Jul_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Jul_24 = 1 THEN 
            CASE 
                WHEN Jun_24 = 2 THEN 'Short Term Credit Churn'
                WHEN May_24 = 2 AND Jun_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Apr_24 = 2 AND May_24 IN (0,1) AND Jun_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_24 = 2 AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_24 = 2 AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_24 = 2 AND Feb_24 IN (0,1) AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_jul_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Jul_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) AND Mar_24 NOT IN (1,2) AND Apr_24 NOT IN (1,2) AND May_24 NOT IN (1,2) AND Jun_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_jul_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1 OR Mar_24 = 1 OR Apr_24 = 1 OR May_24 = 1 OR Jun_24 = 1) THEN 'No Credit History'
                WHEN Jun_24 = 0 AND May_24 IN (1,2) AND has_credit_history_jul_24 = 1 THEN 'Short Term Company Churn'
                WHEN May_24 = 0 AND Jun_24 = 0 AND Apr_24 IN (1,2) AND has_credit_history_jul_24 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Mar_24 IN (1,2) AND has_credit_history_jul_24 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Feb_24 IN (1,2) AND has_credit_history_jul_24 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_24 = 0 AND Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jan_24 IN (1,2) AND has_credit_history_jul_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_24 IN (1,2) AND has_credit_history_jul_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Jul_24_Classification,
    
    -- Aug_24 Classification
    CASE 
        WHEN Aug_24 = 2 THEN
            CASE 
                WHEN has_credit_history_jul_24 = 0 THEN 'New User'
                WHEN Aug_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Aug_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Aug_24 = 1 THEN 
            CASE 
                WHEN Jul_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Jun_24 = 2 AND Jul_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN May_24 = 2 AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_24 = 2 AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_24 = 2 AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_24 = 2 AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_24 = 2 AND Feb_24 IN (0,1) AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_aug_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Aug_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) AND Mar_24 NOT IN (1,2) AND Apr_24 NOT IN (1,2) AND May_24 NOT IN (1,2) AND Jun_24 NOT IN (1,2) AND Jul_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_aug_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1 OR Mar_24 = 1 OR Apr_24 = 1 OR May_24 = 1 OR Jun_24 = 1 OR Jul_24 = 1) THEN 'No Credit History'
                WHEN Jul_24 = 0 AND Jun_24 IN (1,2) AND has_credit_history_aug_24 = 1 THEN 'Short Term Company Churn'
                WHEN Jun_24 = 0 AND Jul_24 = 0 AND May_24 IN (1,2) AND has_credit_history_aug_24 = 1 THEN 'Long Term Company Churn'
                WHEN May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Apr_24 IN (1,2) AND has_credit_history_aug_24 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Mar_24 IN (1,2) AND has_credit_history_aug_24 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Feb_24 IN (1,2) AND has_credit_history_aug_24 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_24 = 0 AND Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Jan_24 IN (1,2) AND has_credit_history_aug_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jul_24 IN (1,2) AND has_credit_history_aug_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Aug_24_Classification,
    
    -- Sep_24 Classification
    CASE 
        WHEN Sep_24 = 2 THEN
            CASE 
                WHEN has_credit_history_aug_24 = 0 THEN 'New User'
                WHEN Sep_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Sep_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Sep_24 = 1 THEN 
            CASE 
                WHEN Aug_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Jul_24 = 2 AND Aug_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Jun_24 = 2 AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN May_24 = 2 AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_24 = 2 AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_24 = 2 AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_24 = 2 AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_24 = 2 AND Feb_24 IN (0,1) AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_sep_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Sep_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) AND Mar_24 NOT IN (1,2) AND Apr_24 NOT IN (1,2) AND May_24 NOT IN (1,2) AND Jun_24 NOT IN (1,2) AND Jul_24 NOT IN (1,2) AND Aug_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_sep_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1 OR Mar_24 = 1 OR Apr_24 = 1 OR May_24 = 1 OR Jun_24 = 1 OR Jul_24 = 1 OR Aug_24 = 1) THEN 'No Credit History'
                WHEN Aug_24 = 0 AND Jul_24 IN (1,2) AND has_credit_history_sep_24 = 1 THEN 'Short Term Company Churn'
                WHEN Jul_24 = 0 AND Aug_24 = 0 AND Jun_24 IN (1,2) AND has_credit_history_sep_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND May_24 IN (1,2) AND has_credit_history_sep_24 = 1 THEN 'Long Term Company Churn'
                WHEN May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Apr_24 IN (1,2) AND has_credit_history_sep_24 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Mar_24 IN (1,2) AND has_credit_history_sep_24 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Feb_24 IN (1,2) AND has_credit_history_sep_24 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_24 = 0 AND Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Jan_24 IN (1,2) AND has_credit_history_sep_24 = 1 THEN 'Long Term Company Churn'
                WHEN Aug_24 IN (1,2) AND has_credit_history_sep_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Sep_24_Classification,
    
    -- Oct_24 Classification
    CASE 
        WHEN Oct_24 = 2 THEN
            CASE 
                WHEN has_credit_history_sep_24 = 0 THEN 'New User'
                WHEN Oct_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Oct_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Oct_24 = 1 THEN 
            CASE 
                WHEN Sep_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Aug_24 = 2 AND Sep_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Jul_24 = 2 AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jun_24 = 2 AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN May_24 = 2 AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_24 = 2 AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_24 = 2 AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_24 = 2 AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_24 = 2 AND Feb_24 IN (0,1) AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_oct_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Oct_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) AND Mar_24 NOT IN (1,2) AND Apr_24 NOT IN (1,2) AND May_24 NOT IN (1,2) AND Jun_24 NOT IN (1,2) AND Jul_24 NOT IN (1,2) AND Aug_24 NOT IN (1,2) AND Sep_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_oct_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1 OR Mar_24 = 1 OR Apr_24 = 1 OR May_24 = 1 OR Jun_24 = 1 OR Jul_24 = 1 OR Aug_24 = 1 OR Sep_24 = 1) THEN 'No Credit History'
                WHEN Sep_24 = 0 AND Aug_24 IN (1,2) AND has_credit_history_oct_24 = 1 THEN 'Short Term Company Churn'
                WHEN Aug_24 = 0 AND Sep_24 = 0 AND Jul_24 IN (1,2) AND has_credit_history_oct_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Jun_24 IN (1,2) AND has_credit_history_oct_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND May_24 IN (1,2) AND has_credit_history_oct_24 = 1 THEN 'Long Term Company Churn'
                WHEN May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Apr_24 IN (1,2) AND has_credit_history_oct_24 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Mar_24 IN (1,2) AND has_credit_history_oct_24 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Feb_24 IN (1,2) AND has_credit_history_oct_24 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_24 = 0 AND Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Jan_24 IN (1,2) AND has_credit_history_oct_24 = 1 THEN 'Long Term Company Churn'
                WHEN Sep_24 IN (1,2) AND has_credit_history_oct_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Oct_24_Classification,
    
    -- Nov_24 Classification
    CASE 
        WHEN Nov_24 = 2 THEN
            CASE 
                WHEN has_credit_history_oct_24 = 0 THEN 'New User'
                WHEN Nov_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Nov_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Nov_24 = 1 THEN 
            CASE 
                WHEN Oct_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Sep_24 = 2 AND Oct_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Aug_24 = 2 AND Sep_24 IN (0,1) AND Oct_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jul_24 = 2 AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) AND Oct_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jun_24 = 2 AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) AND Oct_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN May_24 = 2 AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) AND Oct_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Apr_24 = 2 AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) AND Oct_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Mar_24 = 2 AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) AND Oct_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Feb_24 = 2 AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) AND Oct_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN Jan_24 = 2 AND Feb_24 IN (0,1) AND Mar_24 IN (0,1) AND Apr_24 IN (0,1) AND May_24 IN (0,1) AND Jun_24 IN (0,1) AND Jul_24 IN (0,1) AND Aug_24 IN (0,1) AND Sep_24 IN (0,1) AND Oct_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_nov_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Nov_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) AND Mar_24 NOT IN (1,2) AND Apr_24 NOT IN (1,2) AND May_24 NOT IN (1,2) AND Jun_24 NOT IN (1,2) AND Jul_24 NOT IN (1,2) AND Aug_24 NOT IN (1,2) AND Sep_24 NOT IN (1,2) AND Oct_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_nov_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1 OR Mar_24 = 1 OR Apr_24 = 1 OR May_24 = 1 OR Jun_24 = 1 OR Jul_24 = 1 OR Aug_24 = 1 OR Sep_24 = 1 OR Oct_24 = 1) THEN 'No Credit History'
                WHEN Oct_24 = 0 AND Sep_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Short Term Company Churn'
                WHEN Sep_24 = 0 AND Oct_24 = 0 AND Aug_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Long Term Company Churn'
                WHEN Aug_24 = 0 AND Sep_24 = 0 AND Oct_24 = 0 AND Jul_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Oct_24 = 0 AND Jun_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Long Term Company Churn'
                WHEN Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Oct_24 = 0 AND May_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Long Term Company Churn'
                WHEN May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Oct_24 = 0 AND Apr_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Long Term Company Churn'
                WHEN Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Oct_24 = 0 AND Mar_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Long Term Company Churn'
                WHEN Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Oct_24 = 0 AND Feb_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Long Term Company Churn'
                WHEN Feb_24 = 0 AND Mar_24 = 0 AND Apr_24 = 0 AND May_24 = 0 AND Jun_24 = 0 AND Jul_24 = 0 AND Aug_24 = 0 AND Sep_24 = 0 AND Oct_24 = 0 AND Jan_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Long Term Company Churn'
                WHEN Oct_24 IN (1,2) AND has_credit_history_nov_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Nov_24_Classification,
    
    -- Dec_24 Classification
    CASE 
        WHEN Dec_24 = 2 THEN
            CASE 
                WHEN has_credit_history_nov_24 = 0 THEN 'New User'
                WHEN Dec_24_credit_count BETWEEN 2 AND 5 THEN 'Light User'
                WHEN Dec_24_credit_count BETWEEN 6 AND 9 THEN 'Moderate User'
                ELSE 'Heavy User'
            END
        WHEN Dec_24 = 1 THEN 
            CASE 
                WHEN Nov_24 = 2 THEN 'Short Term Credit Churn'
                WHEN Oct_24 = 2 AND Nov_24 IN (0,1) THEN 'Short Term Credit Churn'
                WHEN Sep_24 = 2 AND Oct_24 IN (0,1) AND Nov_24 IN (0,1) THEN 'Long Term Credit Churn'
                WHEN has_credit_history_dec_24 = 0 THEN 'No Credit History'
                ELSE 'Long Term Credit Churn'
            END
        WHEN Dec_24 = 0 THEN 
            CASE
                WHEN Jan_23 NOT IN (1,2) AND Feb_23 NOT IN (1,2) AND Mar_23 NOT IN (1,2) AND Apr_23 NOT IN (1,2) AND May_23 NOT IN (1,2) AND Jun_23 NOT IN (1,2) AND Jul_23 NOT IN (1,2) AND Aug_23 NOT IN (1,2) AND Sep_23 NOT IN (1,2) AND Oct_23 NOT IN (1,2) AND Nov_23 NOT IN (1,2) AND Dec_23 NOT IN (1,2) AND Jan_24 NOT IN (1,2) AND Feb_24 NOT IN (1,2) AND Mar_24 NOT IN (1,2) AND Apr_24 NOT IN (1,2) AND May_24 NOT IN (1,2) AND Jun_24 NOT IN (1,2) AND Jul_24 NOT IN (1,2) AND Aug_24 NOT IN (1,2) AND Sep_24 NOT IN (1,2) AND Oct_24 NOT IN (1,2) AND Nov_24 NOT IN (1,2) THEN 'No Purchase History'
                WHEN has_credit_history_dec_24 = 0 AND (Jan_23 = 1 OR Feb_23 = 1 OR Mar_23 = 1 OR Apr_23 = 1 OR May_23 = 1 OR Jun_23 = 1 OR Jul_23 = 1 OR Aug_23 = 1 OR Sep_23 = 1 OR Oct_23 = 1 OR Nov_23 = 1 OR Dec_23 = 1 OR Jan_24 = 1 OR Feb_24 = 1 OR Mar_24 = 1 OR Apr_24 = 1 OR May_24 = 1 OR Jun_24 = 1 OR Jul_24 = 1 OR Aug_24 = 1 OR Sep_24 = 1 OR Oct_24 = 1 OR Nov_24 = 1) THEN 'No Credit History'
                WHEN Nov_24 = 0 AND Oct_24 IN (1,2) AND has_credit_history_dec_24 = 1 THEN 'Short Term Company Churn'
                WHEN Oct_24 = 0 AND Nov_24 = 0 AND Sep_24 IN (1,2) AND has_credit_history_dec_24 = 1 THEN 'Long Term Company Churn'
                WHEN Nov_24 IN (1,2) AND has_credit_history_dec_24 = 1 THEN 'Short Term Company Churn'
                ELSE 'Short Term Company Churn'
            END
        ELSE 'No Purchase History'
    END AS Dec_24_Classification,
    
    -- Jan_25 Classification
    CASE 
        WHEN Jan_25

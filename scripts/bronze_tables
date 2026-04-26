-- ============================================================
--  BRONZE LAYER  –  Retail Data Warehouse (12 Tables)
--  Pattern: IF OBJECT_ID … DROP → CREATE TABLE bronze.<name>
-- ============================================================


-- ─────────────────────────────────────────
-- 1. customers
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.customers', 'U') IS NOT NULL
    DROP TABLE bronze.customers;

CREATE TABLE bronze.customers (
    customer_id              INT,
    customer_city            NVARCHAR(50),
    signup_date     DATE
);


-- ─────────────────────────────────────────
-- 2. orders
-- ─────────────────────────────────────────
IF OBJECT_ID ('orders', 'U') IS NOT NULL
    DROP TABLE bronze.orders;

CREATE TABLE bronze.orders (
    order_id              INT,
    customer_id           INT,
    store_id              INT,
    promotion_id          INT,
    order_date            DATE,
);


-- ─────────────────────────────────────────
-- 3. order_items
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.order_items', 'U') IS NOT NULL
    DROP TABLE bronze.order_items;

CREATE TABLE bronze.order_items (
    order_item_id             INT,
    order_id                  INT,
    product_id                INT,
    qty                       INT,
    item_price           DECIMAL(10, 2),
);


-- ─────────────────────────────────────────
-- 4. products
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.products', 'U') IS NOT NULL
    DROP TABLE bronze.products;

CREATE TABLE bronze.products(
    product_id              INT,
    category_id              INT,
    supplier_id              INT,
    product_price             DECIMAL(10, 2),

);


-- ─────────────────────────────────────────
-- 5. categories
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.categories', 'U') IS NOT NULL
    DROP TABLE bronze.categories;

CREATE TABLE bronze.categories (
    category_id              INT,
    category_name            NVARCHAR(100),
);


-- ─────────────────────────────────────────
-- 6. employees
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.employees', 'U') IS NOT NULL
    DROP TABLE bronze.employees;

CREATE TABLE bronze.employees (
    employee_id              INT,
    store_id            INT,
    employee_salary             DECIMAL(10, 2)
);


-- ─────────────────────────────────────────
-- 7. stores
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.stores', 'U') IS NOT NULL
    DROP TABLE bronze.stores;

CREATE TABLE bronze.stores (
    store_id            INT,
    store_city          NVARCHAR(50),
);


-- ─────────────────────────────────────────
-- 8. suppliers
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.suppliers', 'U') IS NOT NULL
    DROP TABLE bronze.suppliers;

CREATE TABLE bronze.suppliers (
    supplier_id              INT,
    supplier_country         NVARCHAR(50),
);


-- ─────────────────────────────────────────
-- 9. promotions
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.promotions', 'U') IS NOT NULL
    DROP TABLE bronze.promotions;

CREATE TABLE bronze.promotions (
    promotion_id              INT,
    discount            INT,

);


-- ─────────────────────────────────────────
-- 10. payments
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.payments', 'U') IS NOT NULL
    DROP TABLE bronze.payments;

CREATE TABLE bronze.payments (
    payment_id              INT,
    order_id              INT,
    payment_amount          DECIMAL(12, 2),
);


-- ─────────────────────────────────────────
-- 11. shipment
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.shipment', 'U') IS NOT NULL
    DROP TABLE bronze.shipment;

CREATE TABLE bronze.shipment (
    shipment_id             INT,
    order_id              INT,
    shipment_status        NVARCHAR(50),

);


-- ─────────────────────────────────────────
-- 12. returns
-- ─────────────────────────────────────────
IF OBJECT_ID ('bronze.return', 'U') IS NOT NULL
    DROP TABLE bronze.returns;

CREATE TABLE bronze.returns (
    return_id              INT,
    order_item_id              INT,
    refund                   INT
);

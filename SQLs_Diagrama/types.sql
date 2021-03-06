CREATE OR REPLACE TYPE CUOTA AS OBJECT
(
    CUOTA_ID NUMBER(4) NOT NULL,
    CUTOA_TIPO VARCHAR2(20),
    CUOTA_NOMBRE VARCHAR2(25),
    CUTOA_CANTIDAD NUMBER,
    CUTOA_FECHA DATE,
    CUTOA_DESCUENTO VARCHAR2(25),
    CUOTA_PAGADO VARCHAR2(10)
)

CREATE OR REPLACE TYPE LINEA_PAGO AS OBJECT
(
    LINEA_ID NUMBER(4) NOT NULL,
    CANTIDAD NUMBER,
    CUOTA_ID REF CUOTA
)

CREATE OR REPLACE TYPE LINEAS_PAGO AS TABLE OF LINEA_PAGO;

CREATE OR REPLACE TYPE PAGO AS OBJECT
(
    PAGO_ID NUMBER(4) NOT NULL,
    SOCIO_ID REF SOCIO,
    SOCIO_DNI REF SOCIO,
    LINEA_ID LINEAS_PAGO  
)
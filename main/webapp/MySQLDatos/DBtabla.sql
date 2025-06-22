CREATE TABLE `administradores` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `nombre_admin` varchar(100) DEFAULT NULL,
  `apellidos_admin` varchar(100) DEFAULT NULL,
  `usuario_admin` varchar(100) DEFAULT NULL,
  `clave_admin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


datos:

id_admin|nombre_admin|apellidos_admin|usuario_admin   |clave_admin
--------+------------+---------------+----------------+-----------
       1|jhefry      |cabanillas     |jhefrycabanillas|030609     
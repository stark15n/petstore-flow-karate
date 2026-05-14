# PetStore API Automation - Karate Framework

# Descripción

Este proyecto contiene la automatización del flujo de pruebas REST solicitado sobre la API pública de Swagger PetStore utilizando Karate Framework.

### Flujo automatizado

1. Crear mascota
2. Consultar mascota por ID
3. Actualizar nombre y estado de la mascota
4. Consultar mascotas por status

El proyecto fue desarrollado utilizando Maven y Java 17.

---

# Tecnologías utilizadas

- Java 17
- Maven 3.9.x
- Karate Framework 1.4.1
- JUnit 5

---
# Configuración del entorno

Antes de ejecutar el proyecto validar:

- Tener Java 17 instalado
- Tener Maven instalado y configurado en variables de entorno
- Tener acceso a internet

---
# Clonar el repositorio

```bash
git clone https://github.com/stark15n/petstore-flow-karate.git
```
Ingresar al proyecto
```bash
cd petstore-flow-karate
```
---
# Ejecución del proyecto

```bash
mvn clean test
```
---

# Reportes
Ruta del reporte
```bash
target/karate-reports/karate-summary.html
```
---
# Estructura del proyecto

```bash
petstore-karate/
│
├── src/
│   └── test/
│       └── java/
│           ├── karate-config.js
│           │
│           └── petstore/
│               ├── petstore-flow.feature
│               └── PetStoreTest.java
│
├── target/
│   └── karate-reports/
│
├── pom.xml
├── README.md
└── .gitignore
```
---

# Caracteristicas Implementadas

- Variables dinámicas para generación de IDs únicos
- Validaciones HTTP y de contenido
- Flujo E2E automatizado
- Configuración centralizada mediante karate-config.js
- Reportes automáticos HTML
- Proyecto administrado con Maven




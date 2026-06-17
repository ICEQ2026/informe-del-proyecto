# Capítulo VI: Conclusions
## 6.1. Conclusiones y recomendaciones

### Conclusiones

1. **Monitoreo continuo de cadena de frío:** ColdTrace demuestra que es posible centralizar la supervisión de temperatura y humedad en activos refrigerados mediante una plataforma web accesible desde cualquier navegador, eliminando la dependencia de controles manuales y registros dispersos. La implementación del dashboard operacional con telemetría en tiempo real (US039) y la RESTful API backend con endpoints de sensor readings validaron la capacidad de la plataforma para ofrecer visibilidad continua del estado de los activos monitoreados.

2. **Arquitectura escalable basada en DDD:** La adopción de una arquitectura hexagonal con Domain-Driven Design y bounded contexts permitió aislar correctamente los dominios de negocio (Identity & Access, Asset Management, Monitoring, Alerts, Reports, Maintenance), facilitando el desarrollo paralelo y la mantenibilidad del código. Cada bounded context cuenta con sus propias capas de dominio, aplicación, infraestructura e interfaces REST, implementadas con Spring Boot.

3. **Colaboración efectiva del equipo:** El uso de GitFlow con ramas feature, Conventional Commits y Pull Requests revisados permitió una integración ordenada y continua del trabajo de los 5 integrantes del equipo. La gestión del backlog mediante Linear App con tickets OPE y la organización del trabajo por Technical Stories aseguró que cada miembro tuviera responsabilidades claras y que el avance fuera medible en cada sprint.

4. **RESTful API completa y desplegada:** La implementación de 16 Technical Stories resultó en 46 endpoints REST documentados con OpenAPI/Swagger UI, cubriendo los flujos completos de registro de organizaciones, gestión de usuarios y roles, administración de activos e IoT, monitoreo de sensores, alertas e incidencias, reportes operativos y de cumplimiento, y mantenimiento. La API fue desplegada exitosamente en Google Cloud Run con CI/CD mediante GitHub Actions.

5. **Plataforma desplegada en tres frentes:** ColdTrace cuenta con una Landing Page informativa en GitHub Pages, una Frontend Web Application funcional en Vercel y una RESTful API con documentación OpenAPI en Google Cloud Run. Esta arquitectura de tres capas permite una experiencia de usuario completa, desde la captación de visitantes hasta la operación diaria de monitoreo de cadena de frío.

### Recomendaciones

1. **Implementar autenticación y autorización:** Como siguiente paso, se recomienda integrar Spring Security con JWT para asegurar los endpoints de la API y gestionar sesiones de usuario de forma segura, cerrando el ciclo de seguridad de la plataforma.

2. **Integrar sensores IoT reales:** La plataforma está diseñada para recibir lecturas de sensores IoT físicos. Se recomienda implementar un gateway de ingesta de datos que permita conectar dispositivos reales (Raspberry Pi, ESP32, etc.) para validar la solución en un entorno operativo real.

3. **Pruebas automatizadas:** Se sugiere incrementar la cobertura de pruebas unitarias y de integración tanto en el frontend (Vitest) como en el backend (JUnit), así como implementar pruebas end-to-end con Cypress o Playwright para validar los flujos completos de la aplicación.

4. **Conexión frontend-backend:** Como parte del trabajo futuro, se recomienda completar la integración de la Frontend Web Application con la RESTful API backend, reemplazando el servidor JSON provisional por los endpoints reales desplegados en Cloud Run.

5. **Monitoreo y observabilidad:** Para la versión productiva, se recomienda implementar herramientas de monitoreo (Cloud Monitoring, Sentry) y logging estructurado que permitan detectar y diagnosticar incidentes operativos en la plataforma de forma proactiva.

## 6.2. Video About-the-Team

[Pending content]

---

### URLs del Proyecto ColdTrace

| Componente | URL |
|---|---|
| Landing Page (GitHub Pages) | https://iceq2026.github.io/landingpage-coldtrace/ |
| Frontend Web App (Vercel) | https://coldtrace-frontend-liard.vercel.app |
| Backend API (Cloud Run) | https://coldtrace-platform-dtbzbm7bta-uc.a.run.app |
| Swagger UI / OpenAPI Docs | https://coldtrace-platform-dtbzbm7bta-uc.a.run.app/swagger-ui/index.html |
| Repositorio Landing Page | https://github.com/ICEQ2026/landingpage-coldtrace |
| Repositorio Frontend | https://github.com/ICEQ2026/coldtrace-frontend |
| Repositorio Backend | https://github.com/ICEQ2026/coldtrace-platform |
| Repositorio Informe | https://github.com/ICEQ2026/informe-del-proyecto |
| Organización GitHub | https://github.com/ICEQ2026 |

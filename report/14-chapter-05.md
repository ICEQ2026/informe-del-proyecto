# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

### 5.1.1. Software Development Environment Configuration

En esta sección se describen las herramientas de software utilizadas por el equipo para el desarrollo colaborativo del proyecto. Estas plataformas permiten organizar el trabajo, diseñar la experiencia de usuario, modelar procesos, gestionar el código fuente y documentar el avance del producto durante su ciclo de vida. La selección de estas herramientas responde a la necesidad de mantener un entorno de trabajo colaborativo, accesible y alineado con las prácticas del curso.

### GitHub

Plataforma utilizada para guardar las versiones del proyecto y gestionar la colaboración mediante ramas, commits y pull requests.

[GitHub](https://github.com/)

![GitHub](assets/chapter-05/development_environment/Github.png)


### Uxpressia

Herramienta utilizada para la elaboración de user personas e impact mapping.

[UXPressia](https://uxpressia.com/)

![UXPressia](assets/chapter-05/development_environment/Uxpressia.png)

### Miro

Plataforma utilizada para el event storming y la organización visual de ideas del proyecto.

[Miro](https://miro.com/)

![Miro](assets/chapter-05/development_environment/Miro.png)


### Figma

La herramienta usada para desarrollo conjunto de wireframes y mockups.

[Figma](https://www.figma.com/)

![Figma](assets/chapter-05/development_environment/Figma.png)


### 5.1.2. Source Code Management

La gestión del código fuente del proyecto se realizó mediante la plataforma GitHub, la cual permitió organizar, controlar y dar seguimiento a los cambios realizados durante el desarrollo de los productos de software y del informe.

Los repositorios usados fueron:

- Repositorio del informe del proyecto: https://github.com/ICEQ2026/informe-del-proyecto
- Repositorio de la landing page: https://github.com/ICEQ2026/landingpage-coldtrace
- Repositorio de la Frontend Web Application: https://github.com/ICEQ2026/coldtrace-frontend
- Repositorio del Server Side Software / RESTful API: https://github.com/ICEQ2026/coldtrace-platform

Estos repositorios cubren los productos de software definidos en el alcance del proyecto: Landing Page, Frontend Web Application y Server Side Software. El repositorio del informe contiene la estructura completa de la documentación, organizada por capítulos, lo que permite una gestión modular y colaborativa del contenido.

### Workflow de Control de Versiones

Para la gestión del desarrollo se utilizó un flujo de trabajo basado en ramas, donde cada integrante del equipo trabajó de manera independiente sobre una rama específica antes de integrar sus cambios a la rama principal.

Las ramas identificadas en el repositorio son:

- **main**: rama principal que contiene la versión estable del proyecto.
- **feature/**: ramas utilizadas para el desarrollo de secciones específicas del informe.

<p align="center">
  <img src="assets/chapter-05/development_environment/github-branches.png"/>
</p>

<p align="center">
  Ramas del repositorio del proyecto, evidenciando el uso de ramas feature para el desarrollo independiente de cada sección.
</p>

### Convenciones de Ramas

Se utilizó una convención de nombres basada en el contenido desarrollado, lo cual se evidencia en las siguientes ramas:

- feature/14-chapter-05
- feature/13-chapter-04
- feature/12-chapter-03
- feature/15-chapter-06
- feature/99-bibliography

Cada rama representa un capítulo o sección del informe, permitiendo que los integrantes trabajen de forma paralela sin interferir en el trabajo de otros.

Este enfoque facilita la organización del proyecto y permite una integración más controlada de los cambios.

### Conventional Commits

Para estandarizar los mensajes de commits, se utilizó la convención de Conventional Commits, permitiendo clasificar los cambios realizados y mejorar la trazabilidad del repositorio.

<p align="center">
  <img src="assets/chapter-05/development_environment/github-commits.png"/>
</p>

<p align="center">
  Commits realizados evidenciando el uso de Conventional Commits para clasificar los tipos de cambios.
</p>

Los tipos de commits utilizados incluyen:

- **feat**: incorporación de nuevo contenido
- **docs**: modificaciones en la documentación
- **fix**: corrección de errores
- **chore**: tareas de mantenimiento

El uso de estas convenciones facilita la comprensión del historial de cambios y mejora la colaboración entre los integrantes del equipo.

La evidencia mostrada refleja el uso de un flujo de trabajo basado en ramas feature, permitiendo una correcta organización del desarrollo y facilitando la integración de los aportes de cada integrante.

### 5.1.3. Source Code Style Guide & Conventions

Con el objetivo de garantizar la consistencia, legibilidad y mantenibilidad del proyecto, el equipo definió una guía de estilo basada en la estructura real de la Landing Page y en buenas prácticas de desarrollo web. Estas convenciones permiten que todos los integrantes trabajen de manera ordenada, facilitan la colaboración en el repositorio y mejoran la escalabilidad del producto.

Siguiendo lo solicitado por el curso, se adoptó el uso de nomenclatura en inglés para los elementos del código fuente. Además, se establecieron criterios comunes para la organización de archivos, definición de estilos, escritura de scripts y manejo de contenidos multilenguaje.

#### Naming conventions

Se utilizó nomenclatura en inglés para todos los elementos del código. Los archivos fueron nombrados según su funcionalidad, lo que facilita su comprensión y mantenimiento.

Ejemplos del proyecto:

- `navigation.js` → manejo de navegación  
- `scroll-reveal.js` → animaciones  
- `variables.css` → variables de diseño  
- `en-US.json` → traducciones en inglés  

Estas convenciones permiten identificar rápidamente el propósito de cada archivo.

#### CSS Style Guide

Para mantener la consistencia visual, se definieron variables globales en CSS que permiten reutilizar colores, tipografías y espaciados en toda la aplicación:

```css
:root {
  --color-primary: #1b59f8;
  --color-secondary-purple: #b899eb;

  --font-family-base: "Inter", "Helvetica Neue", Arial, sans-serif;

  --spacing-md: 16px;
  --spacing-xl: 48px;

  --radius-md: 8px;
}
```

El uso de variables CSS permite centralizar el diseño visual, evitando duplicidad de valores y facilitando futuras modificaciones.

#### JavaScript Conventions

Los archivos JavaScript fueron organizados por funcionalidad, promoviendo la modularidad del código. Se utilizaron funciones con nombres descriptivos en inglés y estructuras claras.

Ejemplo del proyecto:

```js
const toggleMobileMenu = () => {
  if (!moreButton || !mobileMenu) return;

  if (mobileMenu.classList.contains('is-open')) {
    closeMobileMenu();
    return;
  }

  openMobileMenu();
};
```

Este enfoque mejora la legibilidad del código y facilita su mantenimiento.

#### Internacionalización (i18n)

El proyecto incluye soporte para múltiples idiomas mediante archivos JSON ubicados en `assets/locales/`. Cada archivo contiene las traducciones utilizadas en la interfaz.

Ejemplo:

```json
{
  "hero": {
    "title": "All your storage infrastructure under a single intelligent platform",
    "ctaDemo": "Try a demo"
  }
}
```

La implementación de internacionalización permite que la aplicación sea escalable a diferentes mercados y mejora la experiencia del usuario.

### 5.1.4. Software Deployment Configuration

En esta sección se describe la configuración del despliegue de la solución, incluyendo los pasos necesarios para que, a partir del repositorio de código fuente, se logre la publicación satisfactoria de la Landing Page del proyecto.

El despliegue de la solución se realizó utilizando GitHub, aprovechando sus funcionalidades para la publicación de sitios web estáticos.

### Configuración del despliegue de la Landing Page

1. Para el despliegue de la Landing Page se creó un repositorio en la organización alojada en GitHub, el cual contiene todos los archivos del proyecto desarrollados en HTML, CSS y JavaScript.

<p align="center">
  <img src="assets/chapter-05/development_environment/repoLanding.png"/>
</p>

<p align="center">
  Repositorio de la Landing Page utilizado para el despliegue del proyecto.
</p>

2. Se realizó un push al repositorio con todos los archivos que contenían la Landing Page.

<p align="center">
  <img src="assets/chapter-05/development_environment/structureLanding.png"/>
</p>

<p align="center">
  Uso de ramas para el desarrollo e integración de cambios antes del despliegue.
</p>

3. Se crearon branches para la actualización continua del repositorio, donde cada cambio realizado por el equipo eventualmente será agregado a la rama principal.

<p align="center">
  <img src="assets/chapter-05/development_environment/branchesLanding.png"/>
</p>

<p align="center">
  Uso de ramas para el desarrollo e integración de cambios antes del despliegue.
</p>

Una vez integrados los cambios en la rama principal (`main`), se configuró GitHub Pages para publicar automáticamente el contenido del repositorio, permitiendo que la Landing Page sea accesible mediante una URL pública.

Este proceso permite que cada actualización realizada mediante commits y pushes al repositorio se refleje automáticamente en la versión desplegada del sitio web.

### Validación del despliegue

Después del despliegue, se realizaron pruebas para asegurar el correcto funcionamiento de la Landing Page, verificando:

- la carga adecuada del sitio web;
- la navegación entre secciones;
- la correcta ejecución de scripts en JavaScript;
- la adaptación a distintos dispositivos (responsive design);
- la consistencia del contenido multilenguaje.

El uso de GitHub como plataforma de control de versiones y despliegue permite mantener una trazabilidad completa de los cambios, facilitando la colaboración del equipo y asegurando una publicación continua del proyecto.

## 5.2. Landing Page, Services & Applications Implementation

### 5.2.1. Sprint 1

#### 5.2.1.1. Sprint Planning 1

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Sprint #</th>
    <td>Sprint 1</td>
  </tr>

  <tr>
    <th colspan="2">Sprint Planning Background</th>
  </tr>

  <tr>
    <th>Date</th>
    <td>2026-04-20</td>
  </tr>

  <tr>
    <th>Time</th>
    <td>08:00 PM</td>
  </tr>

  <tr>
    <th>Location</th>
    <td>Reunión virtual vía Google Meet</td>
  </tr>

  <tr>
    <th>Prepared By</th>
    <td>Pajés León, Mauricio Luis</td>
  </tr>

  <tr>
    <th>Attendees (to planning meeting)</th>
    <td>Morales Venegas, David Joel / Espinoza Paredes, Frezzia / Cabrera Novoa, Leonardo Moisés / Videla Ventura, Jorge Joseph</td>
  </tr>

  <tr>
    <th>Sprint 1 Review Summary</th>
    <td>Como punto de partida, el equipo logró definir el alcance del producto ColdTrace, estructurar los capítulos iniciales del informe y desarrollar una primera versión funcional de la landing page con secciones clave y vistas básicas como dashboard, monitoreo y alertas. Esto permitió validar la dirección del proyecto y asegurar coherencia entre la propuesta de valor y la implementación inicial.
</td>
  </tr>

  <tr>
    <th>Sprint 1 Retrospective Summary</th>
    <td>Durante este primer sprint, el equipo identificó oportunidades de mejora relacionadas con la organización del tiempo y la coordinación entre integrantes. Si bien se lograron avances importantes en el desarrollo de la landing page, la distribución de tareas pudo ser más equilibrada. Como mejora, se propone fortalecer la comunicación, definir entregables más claros por integrante y establecer reuniones más frecuentes para hacer seguimiento al avance del proyecto.
</td>
  </tr>

  <tr>
    <th colspan="2">Sprint Goal & User Stories</th>
  </tr>

  <tr>
    <th>Sprint 1 Goal</th>
    <td>Desarrollar una primera versión funcional de la landing page de ColdTrace e implementar vistas básicas del sistema (dashboard, monitoreo y alertas) que permitan simular el flujo de monitoreo de la cadena de frío. El cumplimiento se medirá mediante la correcta visualización de la landing page y la navegación entre secciones funcionales.</td>
  </tr>

  <tr>
    <th>Sprint 1 Velocity</th>
    <td>20 Story Points</td>
  </tr>

  <tr>
    <th>Sum of Story Points</th>
    <td>20 Story Points</td>
  </tr>
</table>

#### 5.2.1.2. Aspect Leaders and Collaborators.

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Team Member (Last Name, First Name)</th>
    <th>GitHub Username</th>
    <th>Landing Page Development</th>
    <th>Dashboard & Monitoring Views</th>
    <th>Alerts Simulation</th>
    <th>Frontend Styling (CSS & UI)</th>
    <th>Repository & Version Control</th>
  </tr>

  <tr>
    <td>Cabrera Novoa, Leonardo Moisés</td>
    <td>[u202415820]</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>L</td>
  </tr>

  <tr>
    <td>Espinoza Paredes, Frezzia</td>
    <td>[fflushh]</td>
    <td>C</td>
    <td>L</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
  </tr>

  <tr>
    <td>Morales Venegas, David Joel</td>
    <td>[David-std2]</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
  </tr>

  <tr>
    <td>Pajés León, Mauricio Luis</td>
    <td>[mauricio-pajes]</td>
    <td>L</td>
    <td>C</td>
    <td>L</td>
    <td>L</td>
    <td>C</td>
  </tr>

  <tr>
    <td>Videla Ventura, Jorge Joseph</td>
    <td>[JorgeVidVen]</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
  </tr>
</table>

### 5.2.1.3. Sprint Backlog 1.

Para cumplir con la descomposición de User Stories en Engineering Tasks, los work items del Sprint 1 fueron documentados con estimaciones entre 4 y 8 horas. Esta granularidad permite evidenciar tareas suficientemente pequeñas para seguimiento diario, pero con alcance claro para desarrollo, revisión y cierre dentro del sprint.

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; text-align: center;">
  
  <tr>
    <th>Sprint #</th>
    <td colspan="7">Sprint 1</td>
  </tr>

  <tr>
    <th colspan="2">User Story</th>
    <th colspan="6">Work-Item / Task</th>
  </tr>

  <tr>
    <th>Id</th>
    <th>Title</th>
    <th>Id</th>
    <th>Title</th>
    <th>Description</th>
    <th>Estimation (Hours)</th>
    <th>Assigned To</th>
    <th>Status</th>
  </tr>

  <!-- LANDING -->
  <tr>
    <td>US001</td>
    <td>Propuesta de valor</td>
    <td>T-01</td>
    <td>Hero Section</td>
    <td>Implementar header, navbar y hero section</td>
    <td>4</td>
    <td>Mauricio Pajés</td>
    <td>Done</td>
  </tr>

  <tr>
    <td>US002</td>
    <td>Funcionalidades</td>
    <td>T-02</td>
    <td>Features Section</td>
    <td>Desarrollar sección de funcionalidades del sistema</td>
    <td>4</td>
    <td>Frezzia Espinoza</td>
    <td>Done</td>
  </tr>

  <tr>
    <td>US003</td>
    <td>Cómo funciona</td>
    <td>T-03</td>
    <td>Showcase Section</td>
    <td>Implementar secciones de producto y testimonios</td>
    <td>4</td>
    <td>Mauricio Pajés</td>
    <td>Done</td>
  </tr>

  <tr>
    <td>US004</td>
    <td>Contacto</td>
    <td>T-04</td>
    <td>Signup Section</td>
    <td>Agregar formulario de registro y pricing overview</td>
    <td>4</td>
    <td>Mauricio Pajés</td>
    <td>Done</td>
  </tr>

  <tr>
    <td>US005</td>
    <td>Navegación</td>
    <td>T-05</td>
    <td>Navbar Behavior</td>
    <td>Implementar navegación y estructura del header</td>
    <td>4</td>
    <td>Mauricio Pajés</td>
    <td>Done</td>
  </tr>

  <tr>
    <td>US006</td>
    <td>Responsive</td>
    <td>T-06</td>
    <td>Responsive UI</td>
    <td>Adaptar landing page a dispositivos móviles</td>
    <td>4</td>
    <td>Leonardo Cabrera</td>
    <td>Done</td>
  </tr>

  <!-- DASHBOARD -->
  <tr>
    <td>US018</td>
    <td>Monitoreo</td>
    <td>T-07</td>
    <td>Dashboard UI</td>
    <td>Simular dashboard con datos de temperatura</td>
    <td>5</td>
    <td>Jorge Videla</td>
    <td>Done</td>
  </tr>

  <tr>
    <td>US021</td>
    <td>Alertas</td>
    <td>T-08</td>
    <td>Alerts UI</td>
    <td>Implementar alertas visuales en la interfaz</td>
    <td>4</td>
    <td>Frezzia Espinoza</td>
    <td>Done</td>
  </tr>

  <!-- REPO -->
  <tr>
    <td>-</td>
    <td>Repositorio</td>
    <td>T-09</td>
    <td>GitHub Setup</td>
    <td>Configurar repositorio, ramas y estructura del proyecto</td>
    <td>4</td>
    <td>Leonardo Cabrera</td>
    <td>Done</td>
  </tr>

</table>

### 5.2.1.4. Development Evidence for Sprint Review.

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse;">

  <tr>
    <th>Repository</th>
    <th>Branch</th>
    <th>Commit Id</th>
    <th>Commit Message</th>
    <th>Commit Message Body</th>
    <th>Committed on (Date)</th>
  </tr>

  <tr>
    <td>ICEQ2026/landingpage-coldtrace</td>
    <td>main</td>
    <td>084f1ec</td>
    <td>Initial commit</td>
    <td>Creación inicial del repositorio del proyecto</td>
    <td>21/04/2026</td>
  </tr>

  <tr>
    <td>ICEQ2026/landingpage-coldtrace</td>
    <td>feature/header-hero</td>
    <td>a388ed9</td>
    <td>feat(header-hero): add header navbar and hero section</td>
    <td>Implementación del header, navbar y sección principal de la landing</td>
    <td>22/04/2026</td>
  </tr>

  <tr>
    <td>ICEQ2026/landingpage-coldtrace</td>
    <td>feature/app-features</td>
    <td>b3ab8b8</td>
    <td>feat(landing-page): adding app features section</td>
    <td>Desarrollo de la sección de funcionalidades del producto</td>
    <td>22/04/2026</td>
  </tr>

  <tr>
    <td>ICEQ2026/landingpage-coldtrace</td>
    <td>feature/showcase-why</td>
    <td>e440ecd</td>
    <td>feat(landing-page): add product showcase and testimonials sections</td>
    <td>Implementación de secciones de presentación del producto y testimonios</td>
    <td>23/04/2026</td>
  </tr>

  <tr>
    <td>ICEQ2026/landingpage-coldtrace</td>
    <td>feature/overview-signup</td>
    <td>889c23a</td>
    <td>feat(overview-signup): add pricing overview and signup form sections</td>
    <td>Implementación de sección de precios y formulario de registro</td>
    <td>23/04/2026</td>
  </tr>

  <tr>
    <td>ICEQ2026/landingpage-coldtrace</td>
    <td>feature/footer</td>
    <td>fa060dc</td>
    <td>feat(landing-page): add site footer with brand, social links and nav columns</td>
    <td>Desarrollo del footer con enlaces y estructura de navegación</td>
    <td>23/04/2026</td>
  </tr>

  <tr>
    <td>ICEQ2026/landingpage-coldtrace</td>
    <td>docs/update-readme</td>
    <td>e18ba06</td>
    <td>docs(readme): add project overview, structure and team info</td>
    <td>Documentación del proyecto incluyendo estructura y equipo</td>
    <td>23/04/2026</td>
  </tr>

</table>


#### 5.2.1.5. Execution Evidence for Sprint Review

Durante el Sprint 1 se desarrolló una versión funcional de la landing page de ColdTrace, permitiendo visualizar la propuesta de valor del producto, así como una simulación de las principales funcionalidades del sistema, como monitoreo y alertas.

A continuación, se presentan evidencias visuales de la implementación:

**Landing Page – Sección principal**

![Landing Hero](assets/chapter-05/development_environment/executionlanding1.png)

![Features Section](assets/chapter-05/development_environment/executionlanding2.png)

![Dashboard Alerts](assets/chapter-05/development_environment/executionlanding3.png)

La navegación entre secciones se realiza mediante un menú fijo (navbar), facilitando la experiencia del usuario. Asimismo, la interfaz es responsive, adaptándose a distintos dispositivos.

#### 5.2.1.6. Services Documentation Evidence for Sprint Review

Durante el Sprint 1, no se implementaron Web Services ni endpoints documentados, debido a que el alcance del sprint estuvo enfocado en el desarrollo de la landing page y la simulación de funcionalidades del sistema ColdTrace a nivel frontend.

Sin embargo, como parte del diseño del sistema, se definieron de manera conceptual los principales endpoints que serán implementados en futuros sprints para soportar funcionalidades clave como monitoreo en tiempo real, gestión de alertas y registro de usuarios.

A continuación, se presentan los endpoints identificados:

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Endpoint</th>
    <th>Method</th>
    <th>Descripción</th>
    <th>Ejemplo de respuesta</th>
  </tr>

  <tr>
    <td>/api/temperature</td>
    <td>GET</td>
    <td>Obtiene los datos de temperatura registrados por los sensores</td>
    <td>{ "sensorId": "001", "temperature": 5.6, "timestamp": "2026-04-23" }</td>
  </tr>

  <tr>
    <td>/api/alerts</td>
    <td>GET</td>
    <td>Lista las alertas generadas por el sistema</td>
    <td>{ "alert": "Temperatura fuera de rango", "value": -5.3 }</td>
  </tr>

  <tr>
    <td>/api/users</td>
    <td>POST</td>
    <td>Permite registrar nuevos usuarios en la plataforma</td>
    <td>{ "status": "User created successfully" }</td>
  </tr>

</table>

La documentación formal de estos endpoints mediante OpenAPI, así como su implementación en Web Services, será desarrollada en los siguientes sprints del proyecto.

Asimismo, se prevé la integración con una arquitectura backend que permita la gestión de datos en tiempo real y la persistencia de información generada por los sensores IoT.

#### 5.2.1.7. Software Deployment Evidence for Sprint Review

Durante el Sprint 1 se realizó el despliegue de la landing page utilizando GitHub Pages, permitiendo publicar el proyecto en un entorno accesible desde la web.

El proceso incluyó la configuración del repositorio, la integración de cambios mediante Pull Requests y la automatización del despliegue.

** Deployment en GitHub Pages**

![Deployment](assets/chapter-05/development_environment/deployement.png)

Se evidencia el despliegue exitoso del proyecto en GitHub Pages, mostrando el estado activo del entorno y la publicación reciente de la landing page.

**URL de despliegue:**
https://iceq2026.github.io/landingpage-coldtrace/

#### 5.2.1.8. Team Collaboration Insights during Sprint

Durante el Sprint 1, el equipo trabajó de manera colaborativa utilizando GitHub como herramienta principal de control de versiones.

Se utilizaron ramas feature para desarrollar funcionalidades de forma independiente, integrando cambios mediante Pull Requests hacia la rama principal.

---

**Analíticos de colaboración en GitHub**

![GitHub Insights](assets/chapter-05/development_environment/insights.png)

Se observa la actividad del repositorio, incluyendo commits realizados, pull requests y participación de los integrantes del equipo. Esto evidencia un trabajo colaborativo activo durante el Sprint.

---

El uso de Conventional Commits permitió mantener un historial organizado, diferenciando claramente entre funcionalidades (feat), documentación (docs) y configuración (chore).

Estas prácticas facilitaron la coordinación del equipo y la integración eficiente del desarrollo.

### 5.2.2. Sprint 2

#### 5.2.2.1. Sprint Planning 2

El Sprint 2 tuvo como objetivo principal desplegar la primera versión funcional de la Frontend Web Application de ColdTrace, cubriendo los bounded contexts de Identity & Access Management, Asset Management, Monitoring y Reports. A continuación se presenta el resumen del Sprint Planning Meeting realizado al inicio de este sprint.

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Sprint #</th>
    <td>Sprint 2</td>
  </tr>
  <tr>
    <th colspan="2">Sprint Planning Background</th>
  </tr>
  <tr>
    <th>Date</th>
    <td>2026-05-07</td>
  </tr>
  <tr>
    <th>Time</th>
    <td>08:00 PM</td>
  </tr>
  <tr>
    <th>Location</th>
    <td>Reunión virtual vía Google Meet</td>
  </tr>
  <tr>
    <th>Prepared By</th>
    <td>Pajés León, Mauricio Luis</td>
  </tr>
  <tr>
    <th>Attendees (to planning meeting)</th>
    <td>Morales Venegas, David Joel / Espinoza Paredes, Frezzia / Cabrera Novoa, Leonardo Moisés / Videla Ventura, Jorge Joseph / Pajés León, Mauricio Luis</td>
  </tr>
  <tr>
    <th>Sprint 1 Review Summary</th>
    <td>En el Sprint 1 se completó una primera versión funcional de la landing page de ColdTrace desplegada en GitHub Pages, con secciones de hero, features, showcase, pricing y footer. Se implementaron además las vistas básicas de dashboard, monitoreo y alertas como prueba de concepto del sistema. El equipo logró cumplir con el Sprint Goal y asegurar la coherencia visual entre la landing y la aplicación web. El despliegue fue exitoso y la landing page quedó accesible públicamente.</td>
  </tr>
  <tr>
    <th>Sprint 1 Retrospective Summary</th>
    <td>El equipo identificó que la distribución de tareas en el Sprint 1 fue desigual y que la comunicación entre integrantes podría mejorar. Como acción de mejora para el Sprint 2 se acordó dividir el trabajo por épicas y bounded contexts, asignar un responsable por aspecto funcional, e incorporar a todos los integrantes en la implementación del frontend distribuida según las épicas del product backlog.</td>
  </tr>
  <tr>
    <th colspan="2">Sprint Goal & User Stories</th>
  </tr>
  <tr>
    <th>Sprint 2 Goal</th>
    <td>Our focus is on delivering a fully navigable and deployed Frontend Web Application for ColdTrace operators and administrators. We believe it delivers a usable digital experience to cold chain operations managers and quality control staff, enabling them to manage assets, monitor temperature conditions, and consult operational reports. This will be confirmed when the application is accessible via its public Vercel URL and users can navigate across Identity & Access, Asset Management, Monitoring, and Reports modules without errors.</td>
  </tr>
  <tr>
    <th>Sprint 2 Velocity</th>
    <td>40 Story Points</td>
  </tr>
  <tr>
    <th>Sum of Story Points</th>
    <td>40 Story Points</td>
  </tr>
</table>

#### 5.2.2.2. Aspect Leaders and Collaborators

Durante el Sprint 2, el equipo organizó el trabajo en torno a los principales aspectos funcionales de la Frontend Web Application de ColdTrace. Cada aspecto corresponde a una épica del product backlog o a un conjunto de features dentro de un bounded context. Se designó un líder (L) por aspecto para asegurar la coherencia técnica y la toma de decisiones dentro de cada módulo, y se asignaron colaboradores (C) entre los demás integrantes del equipo.

Los aspectos principales del Sprint 2 fueron los siguientes:

- **Authentication & User Access (EP002):** Vistas de creación de cuenta, inicio de sesión, recuperación de contraseña y gestión de roles y permisos.
- **Asset Registration & Configuration (EP003):** Registro de cámaras frigoríficas, unidades de transporte, vinculación de sensores, emparejamiento de gateways, calibración y configuración avanzada de activos.
- **Operational Monitoring Dashboard (EP004):** Dashboard operacional con telemetría en tiempo real, KPIs y estado de activos monitoreados (US039).
- **Alerts & Incidents UI (EP005):** Estructura de navegación y vistas base para el módulo de alertas e incidencias.
- **Reports & Compliance (EP006):** Vistas de bitácora diaria, historial de eventos operacionales, exportación de reportes sanitarios, descarga mensual, hallazgos de cumplimiento y evidencia de auditoría (US029–US034).
- **Operative Configuration & Maintenance (EP007):** Configuración de rangos de seguridad, parámetros operativos del monitoreo y flujos de mantenimiento preventivo (US035–US038).
- **Deployment & Infrastructure:** Configuración del pipeline CI/CD en Vercel, servidor JSON hospedado y configuración del entorno de producción.

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Team Member (Last Name, First Name)</th>
    <th>GitHub Username</th>
    <th>Authentication &amp; User Access (EP002)</th>
    <th>Asset Registration &amp; Configuration (EP003)</th>
    <th>Operational Monitoring Dashboard (EP004)</th>
    <th>Alerts &amp; Incidents UI (EP005)</th>
    <th>Reports &amp; Compliance (EP006)</th>
    <th>Operative Configuration (EP007)</th>
    <th>Deployment &amp; Infrastructure</th>
  </tr>
  <tr>
    <td>Cabrera Novoa, Leonardo Moisés</td>
    <td>u202415820</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
  </tr>
  <tr>
    <td>Espinoza Paredes, Frezzia</td>
    <td>fflushh</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
  </tr>
  <tr>
    <td>Morales Venegas, David Joel</td>
    <td>David-std2</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
  </tr>
  <tr>
    <td>Pajés León, Mauricio Luis</td>
    <td>mauricio-pajes</td>
    <td>L</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
  </tr>
  <tr>
    <td>Videla Ventura, Jorge Joseph</td>
    <td>JorgeVidVen</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
  </tr>
</table>

#### 5.2.2.3. Sprint Backlog 2

El objetivo principal del Sprint 2 fue implementar y desplegar la primera versión completa de la Frontend Web Application de ColdTrace, habilitando los flujos de autenticación, gestión de activos, monitoreo operacional y consulta de reportes de cumplimiento. El equipo gestionó el Sprint Backlog mediante Linear App, organizando las tareas por épica y bounded context. Las Engineering Tasks se documentaron con estimaciones entre 4 y 8 horas para asegurar seguimiento claro y una descomposición consistente del trabajo.

A continuación se presenta una captura del backlog gestionado en Linear App:

![Sprint 2 Backlog – Linear App](assets/chapter-05/sprint-2/linear-backlog.png)
*Figura 5.2.2.3.1: Sprint Backlog del Sprint 2 en Linear App (46 issues Done, 1 In Progress, 7 Backlog).*

A continuación se presenta la tabla de control de estado del sprint.

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; text-align: center;">
  <tr>
    <th>Sprint #</th>
    <td colspan="7">Sprint 2</td>
  </tr>
  <tr>
    <th colspan="2">User Story</th>
    <th colspan="6">Work-Item / Task</th>
  </tr>
  <tr>
    <th>Id</th>
    <th>Title</th>
    <th>Id</th>
    <th>Title</th>
    <th>Description</th>
    <th>Estimation (Hours)</th>
    <th>Assigned To</th>
    <th>Status</th>
  </tr>

  <!-- EP002 - IDENTITY & ACCESS -->
  <tr>
    <td>US007</td>
    <td>Crear cuenta</td>
    <td>T-10</td>
    <td>Create Account UI</td>
    <td>Implementar formulario de creación de cuenta de usuario</td>
    <td>4</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US008</td>
    <td>Iniciar sesión</td>
    <td>T-11</td>
    <td>Sign-In UI</td>
    <td>Implementar vista de inicio de sesión con validación de credenciales</td>
    <td>4</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US009</td>
    <td>Recuperar contraseña</td>
    <td>T-12</td>
    <td>Password Recovery UI</td>
    <td>Implementar flujo de recuperación de contraseña por email</td>
    <td>4</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US010</td>
    <td>Gestionar roles y permisos</td>
    <td>T-13</td>
    <td>Roles &amp; Permissions UI</td>
    <td>Implementar vista de administración de roles y permisos de usuario</td>
    <td>5</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- EP003 - ASSET MANAGEMENT -->
  <tr>
    <td>US012</td>
    <td>Registrar cámara frigorífica</td>
    <td>T-14</td>
    <td>Cold Room Registration UI</td>
    <td>Implementar formulario de registro y listado de cámaras frigoríficas</td>
    <td>5</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US013</td>
    <td>Registrar unidad de transporte</td>
    <td>T-15</td>
    <td>Transport Unit UI</td>
    <td>Implementar registro de unidades de transporte refrigerado</td>
    <td>4</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US014</td>
    <td>Vincular sensor a activo</td>
    <td>T-16</td>
    <td>Sensor Linking UI</td>
    <td>Implementar flujo de vinculación de sensores IoT a activos registrados</td>
    <td>4</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US015</td>
    <td>Emparejar gateway</td>
    <td>T-17</td>
    <td>Gateway Pairing UI</td>
    <td>Implementar emparejamiento de gateway con la plataforma</td>
    <td>4</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US016</td>
    <td>Calibrar sensor</td>
    <td>T-18</td>
    <td>Sensor Calibration UI</td>
    <td>Implementar revisión y registro de calibración de sensores</td>
    <td>4</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US017</td>
    <td>Actualizar activo</td>
    <td>T-19</td>
    <td>Asset Update UI</td>
    <td>Implementar flujo de actualización de datos y estado de activos</td>
    <td>4</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US035</td>
    <td>Configurar parámetros de activo</td>
    <td>T-20</td>
    <td>Asset Settings &amp; IoT Params UI</td>
    <td>Implementar pantalla de configuración avanzada de activos y parámetros IoT</td>
    <td>5</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- EP004 - MONITORING (David) -->
  <tr>
    <td>US018</td>
    <td>Visualizar temperatura en tiempo real</td>
    <td>T-21</td>
    <td>Real-Time Temperature View</td>
    <td>Implementar vista de monitoreo de temperatura en tiempo real por activo</td>
    <td>5</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US019</td>
    <td>Visualizar humedad en tiempo real</td>
    <td>T-22</td>
    <td>Real-Time Humidity View</td>
    <td>Implementar vista de monitoreo de humedad en tiempo real por activo</td>
    <td>5</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US020</td>
    <td>Consultar historial de lecturas</td>
    <td>T-23</td>
    <td>Readings History View</td>
    <td>Implementar vista de historial de lecturas de temperatura y humedad</td>
    <td>5</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US021</td>
    <td>Detectar temperatura fuera de rango</td>
    <td>T-24</td>
    <td>Out-of-Range Detection View</td>
    <td>Implementar indicadores visuales de detección de temperatura fuera de rango seguro</td>
    <td>5</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US022</td>
    <td>Visualizar estado de conectividad</td>
    <td>T-25</td>
    <td>Connectivity Status View</td>
    <td>Implementar vista del estado de conectividad de sensores y gateways</td>
    <td>4</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US023</td>
    <td>Sincronizar datos almacenados offline</td>
    <td>T-26</td>
    <td>Offline Sync View</td>
    <td>Implementar vista de sincronización de datos almacenados sin conexión</td>
    <td>5</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US039</td>
    <td>Visualizar dashboard operativo inicial</td>
    <td>T-27</td>
    <td>Operational Dashboard UI</td>
    <td>Implementar dashboard operacional con telemetría en vivo, KPIs y estado de activos monitoreados</td>
    <td>8</td>
    <td>Morales Venegas, David / Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- EP005 - ALERTS (Jorge) -->
  <tr>
    <td>US024</td>
    <td>Crear incidencia térmica</td>
    <td>T-28</td>
    <td>Thermal Incident Creation UI</td>
    <td>Implementar vista de creación de incidencia térmica al detectar desviación</td>
    <td>4</td>
    <td>Videla Ventura, Jorge</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US025</td>
    <td>Disparar notificaciones de alerta</td>
    <td>T-29</td>
    <td>Alert Notification UI</td>
    <td>Implementar vista de notificaciones de alerta automáticas</td>
    <td>4</td>
    <td>Videla Ventura, Jorge</td>
    <td>In-Process</td>
  </tr>
  <tr>
    <td>US026</td>
    <td>Escalar alerta no atendida</td>
    <td>T-30</td>
    <td>Alert Escalation UI</td>
    <td>Implementar vista de escalamiento de alertas no atendidas</td>
    <td>4</td>
    <td>Videla Ventura, Jorge</td>
    <td>To-do</td>
  </tr>
  <tr>
    <td>US027</td>
    <td>Reconocer alerta crítica</td>
    <td>T-31</td>
    <td>Critical Alert Acknowledgement UI</td>
    <td>Implementar vista de reconocimiento de alertas críticas</td>
    <td>4</td>
    <td>Videla Ventura, Jorge</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US028</td>
    <td>Registrar acción correctiva y cerrar incidencia</td>
    <td>T-32</td>
    <td>Corrective Action UI</td>
    <td>Implementar vista de registro de acción correctiva y cierre de incidencia</td>
    <td>4</td>
    <td>Videla Ventura, Jorge</td>
    <td>Done</td>
  </tr>

  <!-- EP006 - REPORTS (Leonardo) -->
  <tr>
    <td>US029</td>
    <td>Generar bitácora diaria</td>
    <td>T-33</td>
    <td>Daily Log View</td>
    <td>Implementar vista de bitácora diaria de lecturas y eventos del sistema</td>
    <td>4</td>
    <td>Cabrera Novoa, Leonardo</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US030</td>
    <td>Consultar historial de eventos</td>
    <td>T-34</td>
    <td>Operational History View</td>
    <td>Implementar vista de historial de eventos operacionales</td>
    <td>4</td>
    <td>Cabrera Novoa, Leonardo</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US031</td>
    <td>Exportar reporte sanitario</td>
    <td>T-35</td>
    <td>Sanitary Compliance Export</td>
    <td>Implementar vista de exportación de reporte de cumplimiento sanitario</td>
    <td>4</td>
    <td>Cabrera Novoa, Leonardo</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US032</td>
    <td>Descargar reporte mensual</td>
    <td>T-36</td>
    <td>Monthly Report Download</td>
    <td>Implementar descarga de reporte mensual consolidado</td>
    <td>4</td>
    <td>Cabrera Novoa, Leonardo</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US033</td>
    <td>Detectar faltantes o incumplimientos</td>
    <td>T-37</td>
    <td>Compliance Findings View</td>
    <td>Implementar vista de hallazgos y faltantes de cumplimiento normativo</td>
    <td>4</td>
    <td>Cabrera Novoa, Leonardo</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US034</td>
    <td>Preparar evidencia para auditoría</td>
    <td>T-38</td>
    <td>Audit Evidence View</td>
    <td>Implementar vista de evidencia de auditoría con registros descargables</td>
    <td>4</td>
    <td>Cabrera Novoa, Leonardo</td>
    <td>Done</td>
  </tr>

  <!-- EP007 - OPERATIVE CONFIG -->
  <tr>
    <td>US035</td>
    <td>Configurar rangos de seguridad</td>
    <td>T-39</td>
    <td>Safety Range Settings UI</td>
    <td>Implementar vista de configuración de rangos seguros de temperatura y humedad por activo</td>
    <td>4</td>
    <td>Espinoza Paredes, Frezzia</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US036</td>
    <td>Actualizar parámetros operativos</td>
    <td>T-40</td>
    <td>Operational Parameters UI</td>
    <td>Implementar vista de actualización de parámetros operativos del monitoreo</td>
    <td>4</td>
    <td>Espinoza Paredes, Frezzia</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US037</td>
    <td>Programar mantenimiento preventivo</td>
    <td>T-41</td>
    <td>Preventive Maintenance UI</td>
    <td>Implementar vista de programación y seguimiento de mantenimiento preventivo</td>
    <td>4</td>
    <td>Espinoza Paredes, Frezzia</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>US038</td>
    <td>Solicitar y cerrar servicio técnico</td>
    <td>T-42</td>
    <td>Technical Service UI</td>
    <td>Implementar vista de solicitud y cierre de servicio técnico</td>
    <td>4</td>
    <td>Espinoza Paredes, Frezzia</td>
    <td>Done</td>
  </tr>

  <!-- DEPLOYMENT -->
  <tr>
    <td>-</td>
    <td>Despliegue continuo</td>
    <td>T-43</td>
    <td>Vercel CI/CD &amp; JSON Server Setup</td>
    <td>Configurar despliegue automático en Vercel con preview por branch y servidor JSON hospedado</td>
    <td>4</td>
    <td>Pajés León, Mauricio</td>
    <td>Done</td>
  </tr>
</table>

#### 5.2.2.4. Development Evidence for Sprint Review

Durante el Sprint 2 se realizó la implementación completa de la Frontend Web Application de ColdTrace utilizando Angular Framework, aplicando la arquitectura de bounded contexts definida en el diseño de la solución. Todos los commits se realizaron en el repositorio `ICEQ2026/coldtrace-frontend` aplicando Conventional Commits y GitFlow con ramas `feature/` por cada User Story.

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse;">
  <tr>
    <th>Repository</th>
    <th>Branch</th>
    <th>Commit Id</th>
    <th>Commit Message</th>
    <th>Commit Message Body</th>
    <th>Committed on (Date)</th>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/create-account-ui</td>
    <td>0e1dc25</td>
    <td>feat(identity-access): add create account UI</td>
    <td>Implementación del formulario de creación de cuenta de usuario</td>
    <td>07/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/sign-in-up</td>
    <td>7805078</td>
    <td>feat(identity-access): add sign-in UI</td>
    <td>Implementación de la vista de inicio de sesión</td>
    <td>08/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/password-recovery-ui</td>
    <td>600c8bb</td>
    <td>feat(identity-access): add password recovery UI</td>
    <td>Implementación del flujo de recuperación de contraseña</td>
    <td>08/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/roles-permissions-ui</td>
    <td>ac9cf25</td>
    <td>feat(identity-access): add roles permissions ui</td>
    <td>Implementación de vista de administración de roles y permisos</td>
    <td>09/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/cold-room-ui</td>
    <td>6b973b6</td>
    <td>feat(asset-management): add cold room registration</td>
    <td>Implementación del registro de cámaras frigoríficas</td>
    <td>09/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/transport-unit-ui</td>
    <td>8271aac</td>
    <td>feat(asset-management): add transport unit registration</td>
    <td>Implementación del registro de unidades de transporte refrigerado</td>
    <td>09/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/sensor-linking-ui</td>
    <td>7e3c90b</td>
    <td>feat(asset-management): add sensor asset linking</td>
    <td>Implementación del flujo de vinculación de sensores a activos</td>
    <td>09/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/gateway-pairing-ui</td>
    <td>56b97d3</td>
    <td>feat(asset-management): add gateway pairing</td>
    <td>Implementación del emparejamiento de gateway</td>
    <td>09/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/sensor-calibration-ui</td>
    <td>7fa8b62</td>
    <td>feat(asset-management): add sensor calibration review</td>
    <td>Implementación de la revisión y registro de calibración de sensores</td>
    <td>09/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/asset-update-ui</td>
    <td>7c3afb8</td>
    <td>feat(asset-management): add asset update flow</td>
    <td>Implementación del flujo de actualización de activos</td>
    <td>09/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/asset-settings-ui</td>
    <td>789ea56</td>
    <td>feat(asset-management): add asset settings UI</td>
    <td>Implementación de pantalla de configuración avanzada de activos</td>
    <td>09/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/iot-device-parameters</td>
    <td>c33ad7e</td>
    <td>feat(asset-management): support iot device parameters</td>
    <td>Adición de soporte para parámetros de dispositivos IoT</td>
    <td>11/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US039-operational-dashboard</td>
    <td>e51c9da</td>
    <td>feat(monitoring): add data-driven operational dashboard and refactor visual components</td>
    <td>Implementación del dashboard con datos reales y refactorización de componentes visuales</td>
    <td>11/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US039-operational-dashboard</td>
    <td>b5198ae</td>
    <td>feat(monitoring): operational dashboard with live telemetry (US039)</td>
    <td>Implementación del dashboard operacional con telemetría en vivo</td>
    <td>11/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>develop</td>
    <td>57c2200</td>
    <td>feat: implement asset monitoring dashboard</td>
    <td>Implementación del dashboard de monitoreo de activos</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>develop</td>
    <td>5d84982</td>
    <td>chore: sync db.json</td>
    <td>Sincronización de base de datos JSON del servidor provisional</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>develop</td>
    <td>dd74863</td>
    <td>feat(shared): implement accordion toggle for access menu in sidebar</td>
    <td>Implementación del toggle tipo accordion para el menú de acceso en la barra lateral</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US029-daily-log</td>
    <td>e531330</td>
    <td>feat(reports): add reports bounded context with daily log</td>
    <td>Creación del bounded context de reportes con la vista de bitácora diaria</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US030-history-events</td>
    <td>83ed5a3</td>
    <td>feat(reports): add US030 operational history events view</td>
    <td>Implementación de la vista de historial de eventos operacionales</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US031-sanitary-compliance-export</td>
    <td>3222041</td>
    <td>feat(reports): add US031 sanitary compliance export view</td>
    <td>Implementación de la vista de exportación de reporte sanitario</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US032-monthly-report-download</td>
    <td>3cfaef3</td>
    <td>feat(reports): add US032 monthly report download view</td>
    <td>Implementación de la descarga de reporte mensual consolidado</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US033-compliance-findings</td>
    <td>f546d40</td>
    <td>feat(reports): add US033 compliance findings view</td>
    <td>Implementación de la vista de hallazgos de cumplimiento normativo</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US034-audit-evidence</td>
    <td>eeed5c6</td>
    <td>feat(reports): add US034 audit evidence view</td>
    <td>Implementación de la vista de evidencia de auditoría</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US027-recognize-critical-alert</td>
    <td>859ae1d</td>
    <td>feat: implement recognize critical alert feature including domain, infrastructure, application and presentation layers</td>
    <td>Implementación completa del feature de reconocimiento de alerta crítica con capas de dominio, infraestructura, aplicación y presentación</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US035-safety-range-settings</td>
    <td>—</td>
    <td>feat(asset-management): add safety range settings UI</td>
    <td>Implementación de la vista de configuración de rangos seguros de temperatura y humedad</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US036-operational-parameters</td>
    <td>—</td>
    <td>feat(asset-management): add operational parameters UI</td>
    <td>Implementación de la vista de actualización de parámetros operativos del monitoreo</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US037-preventive-maintenance</td>
    <td>—</td>
    <td>feat(asset-management): add preventive maintenance UI</td>
    <td>Implementación de la vista de programación de mantenimiento preventivo</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>feature/US038-technical-service</td>
    <td>—</td>
    <td>feat(asset-management): add technical service request UI</td>
    <td>Implementación de la vista de solicitud y cierre de servicio técnico</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>develop</td>
    <td>069b6cf</td>
    <td>chore(deploy): configure hosted json server</td>
    <td>Configuración del servidor JSON hospedado para soporte de datos en el despliegue</td>
    <td>12/05/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-frontend</td>
    <td>develop</td>
    <td>b5dfe86</td>
    <td>docs: document frontend implementation</td>
    <td>Documentación de la implementación del frontend en el README del repositorio</td>
    <td>12/05/2026</td>
  </tr>
</table>

#### 5.2.2.5. Execution Evidence for Sprint Review

Al término del Sprint 2, se desplegó la primera versión funcional de la Frontend Web Application de ColdTrace en Vercel, accesible públicamente. La aplicación permite navegar a través de los módulos de autenticación, gestión de activos, monitoreo operacional y reportes de cumplimiento. A continuación se presentan las principales vistas implementadas durante el sprint.

**Identity & Access – Autenticación y gestión de usuarios**

La plataforma cuenta con vistas de creación de cuenta, inicio de sesión y recuperación de contraseña, así como una pantalla de administración de roles y permisos para usuarios con perfil administrador.

![Sign-In View](assets/chapter-05/sprint-2/sign-in.png)
*Figura 5.2.2.5.1: Vista de Inicio de Sesión (Sign-In).*

![Create Account View](assets/chapter-05/sprint-2/create-account.png)
*Figura 5.2.2.5.2: Vista de Registro de Cuenta (Sign-Up).*

![Password Recovery View](assets/chapter-05/sprint-2/password-recovery.png)
*Figura 5.2.2.5.3: Vista de Recuperación de Contraseña.*

![Roles & Permissions View](assets/chapter-05/sprint-2/roles-permissions.png)
*Figura 5.2.2.5.4: Administración de Roles y Permisos.*

**Asset Management – Gestión de activos e infraestructura IoT**

Se implementó el módulo completo de gestión de activos, incluyendo el registro de cámaras frigoríficas, unidades de transporte, vinculación de sensores IoT, emparejamiento de gateways, calibración y configuración avanzada de parámetros de dispositivos.

![Cold Room List View](assets/chapter-05/sprint-2/cold-room-list.png)
*Figura 5.2.2.5.5: Listado y Gestión de Cámaras Frigoríficas.*

![Transport Unit List View](assets/chapter-05/sprint-2/transport-units.png)
*Figura 5.2.2.5.6: Registro de Unidades de Transporte.*

![Sensor Linking & Gateway Pairing View](assets/chapter-05/sprint-2/sensor-pairing.png)
*Figura 5.2.2.5.7: Vinculación de Sensores y Gateways IoT.*

![Asset Settings & IoT Configuration View](assets/chapter-05/sprint-2/asset-settings.png)
*Figura 5.2.2.5.8: Configuración Avanzada y Parámetros Operativos.*

**Monitoring – Dashboard operacional (US039)**

El dashboard operacional muestra en tiempo real el estado de los activos monitoreados, KPIs de temperatura, alertas activas y telemetría de sensores. Los datos se consumen desde el servidor JSON configurado como backend provisional.

![Operational Dashboard View](assets/chapter-05/sprint-2/operational-dashboard.png)
*Figura 5.2.2.5.9: Dashboard Operacional con Telemetría en Tiempo Real.*

**Reports – Reportes y cumplimiento normativo (US029–US034)**

El módulo de reportes incluye seis vistas: bitácora diaria, historial de eventos operacionales, exportación de reportes sanitarios, descarga de reportes mensuales, hallazgos de cumplimiento y evidencia de auditoría.

![Reports Daily Log View](assets/chapter-05/sprint-2/daily-log.png)
*Figura 5.2.2.5.10: Bitácora Diaria de Operaciones.*

![Operational History View](assets/chapter-05/sprint-2/operational-history.png)
*Figura 5.2.2.5.11: Historial de Eventos Operacionales.*

![Compliance Findings & Audit Evidence View](assets/chapter-05/sprint-2/compliance-audit.png)
*Figura 5.2.2.5.12: Hallazgos de Cumplimiento y Evidencia de Auditoría.*

**Video de navegación del producto:** [upc-pre-202610-1asi0729-10177-coldtrace-productnav-sprint-2](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410093_upc_edu_pe/IQAb3T9DE7AmQ7aOxNsIfCAIAaqlY68Kt3syw7uDil2npvk?e=hlq0YC&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D)

#### 5.2.2.6. Services Documentation Evidence for Sprint Review

Durante el Sprint 2 no se desplegaron Web Services propios (RESTful API), dado que el alcance del sprint estuvo centrado en la implementación del frontend. Para soportar el funcionamiento de la aplicación en producción, el equipo configuró un servidor JSON hospedado (`json-server`) que actúa como API provisional, permitiendo que el frontend consuma datos estructurados mediante endpoints REST simulados.

A continuación se documentan los principales endpoints del servidor JSON que el frontend consume durante este sprint:

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Endpoint</th>
    <th>Verb HTTP</th>
    <th>Descripción</th>
    <th>Ejemplo de Response</th>
  </tr>
  <tr>
    <td>/assets</td>
    <td>GET</td>
    <td>Retorna la lista de activos registrados (cámaras frigoríficas, unidades de transporte)</td>
    <td>{ "id": "1", "name": "Cámara 01", "type": "cold_room", "status": "active" }</td>
  </tr>
  <tr>
    <td>/assets/:id</td>
    <td>GET</td>
    <td>Retorna el detalle de un activo específico por ID</td>
    <td>{ "id": "1", "name": "Cámara 01", "temperature": 4.2, "humidity": 78 }</td>
  </tr>
  <tr>
    <td>/assets</td>
    <td>POST</td>
    <td>Registra un nuevo activo en la plataforma</td>
    <td>{ "id": "5", "name": "Unidad Truck-03", "type": "transport_unit" }</td>
  </tr>
  <tr>
    <td>/gateways</td>
    <td>GET</td>
    <td>Retorna la lista de gateways IoT registrados y su estado de conectividad</td>
    <td>{ "id": "g1", "name": "Gateway A", "status": "connected" }</td>
  </tr>
  <tr>
    <td>/iot-devices</td>
    <td>GET</td>
    <td>Retorna la lista de sensores IoT vinculados a activos</td>
    <td>{ "id": "s1", "assetId": "1", "type": "temperature", "lastReading": 4.2 }</td>
  </tr>
  <tr>
    <td>/telemetry</td>
    <td>GET</td>
    <td>Retorna lecturas de telemetría para el dashboard operacional</td>
    <td>{ "assetId": "1", "temperature": 4.1, "humidity": 79, "timestamp": "2026-05-12T20:00:00Z" }</td>
  </tr>
  <tr>
    <td>/reports/daily-log</td>
    <td>GET</td>
    <td>Retorna entradas de la bitácora diaria de operaciones</td>
    <td>{ "date": "2026-05-12", "asset": "Cámara 01", "event": "Lectura normal", "value": 4.2 }</td>
  </tr>
  <tr>
    <td>/reports/compliance</td>
    <td>GET</td>
    <td>Retorna el reporte de cumplimiento sanitario del periodo</td>
    <td>{ "period": "2026-05", "status": "compliant", "findings": 0 }</td>
  </tr>
  <tr>
    <td>/users</td>
    <td>GET</td>
    <td>Retorna la lista de usuarios registrados en la plataforma</td>
    <td>{ "id": "u1", "name": "Admin", "role": "administrator" }</td>
  </tr>
  <tr>
    <td>/roles</td>
    <td>GET</td>
    <td>Retorna los roles definidos en el sistema y sus permisos asociados</td>
    <td>{ "id": "r1", "name": "operator", "permissions": ["read:assets", "read:reports"] }</td>
  </tr>
</table>

La implementación formal del RESTful API con Spring Boot será abordada en el Sprint 3, donde se desarrollarán y documentarán los endpoints reales mediante OpenAPI/Swagger.

#### 5.2.2.7. Software Deployment Evidence for Sprint Review

Durante el Sprint 2 se configuró el despliegue continuo de la Frontend Web Application de ColdTrace mediante Vercel, integrando el repositorio `ICEQ2026/coldtrace-frontend` con un pipeline de CI/CD automático. Cada push a una rama `feature/` genera un Preview Deployment, mientras que los merges a `develop` actualizan el entorno de desarrollo. Al cierre del sprint el repositorio acumuló 135 deployments exitosos.

**Pasos realizados para el despliegue:**

1. Se conectó el repositorio `ICEQ2026/coldtrace-frontend` al proyecto en Vercel desde el dashboard de la plataforma.

2. Se configuró el proyecto Angular para que Vercel detecte automáticamente el framework y ejecute `ng build` como comando de construcción, apuntando a `dist/coldtrace-frontend/browser` como directorio de salida.

3. Se habilitó la integración con GitHub Actions para que cada Pull Request exponga el URL del Preview Deployment como status check en el repositorio, facilitando la revisión visual de cada feature antes de su merge.

4. Se configuró un servidor JSON hospedado como backend provisional, desplegado también en Vercel, para que el frontend consuma datos estructurados desde producción.

5. Se verificó el correcto funcionamiento del build en producción, incluyendo el enrutamiento de Angular con `redirects` configurados en `vercel.json`.

**URL de despliegue del frontend:**
https://coldtrace-frontend-liard.vercel.app

A continuación se presenta la evidencia del despliegue en Vercel:

![Vercel Active Branches](assets/chapter-05/sprint-2/vercel-active-branches.png)
*Figura 5.2.2.7.1: Branches activos con sus Preview Deployments en Vercel, mostrando los PRs #16–#28 y los contributors por branch.*

![Vercel Production Deployment](assets/chapter-05/sprint-2/vercel-production-deployment.png)
*Figura 5.2.2.7.2: Production Deployment overview en Vercel — Status Ready, dominio coldtrace-frontend-liard.vercel.app.*

#### 5.2.2.8. Team Collaboration Insights during Sprint

Durante el Sprint 2, el equipo trabajó de forma colaborativa en el repositorio `ICEQ2026/coldtrace-frontend`, aplicando GitFlow con ramas `feature/` por cada User Story y fusionando los cambios hacia `develop` mediante Pull Requests revisados. La distribución del trabajo refleja la organización por épicas acordada en el Sprint Planning: Mauricio Pajés lideró la implementación de EP002 (Identity & Access) y EP003 (Asset Management), David Morales encabezó el desarrollo del dashboard operacional de EP004, y Leonardo Cabrera implementó la totalidad del bounded context de reportes EP006 (US029–US034).

A continuación se presenta el resumen de participación por integrante basado en el historial de commits del repositorio:

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Integrante</th>
    <th>GitHub Username</th>
    <th>Commits (Sprint 2)</th>
    <th>Épicas / Bounded Contexts trabajados</th>
  </tr>
  <tr>
    <td>Pajés León, Mauricio Luis</td>
    <td>mauricio-pajes</td>
    <td>~33</td>
    <td>EP002 Identity &amp; Access, EP003 Asset Management, EP004 Monitoring, Deployment</td>
  </tr>
  <tr>
    <td>Cabrera Novoa, Leonardo Moisés</td>
    <td>u202415820</td>
    <td>~19</td>
    <td>EP006 Reports &amp; Compliance (US029–US034)</td>
  </tr>
  <tr>
    <td>Morales Venegas, David Joel</td>
    <td>David-std2</td>
    <td>~5</td>
    <td>EP004 Operational Monitoring Dashboard (US039, monitoring dashboard, sidebar)</td>
  </tr>
  <tr>
    <td>Espinoza Paredes, Frezzia</td>
    <td>fflushh</td>
    <td>4</td>
    <td>EP007 Operative Configuration &amp; Maintenance (US035–US038)</td>
  </tr>
  <tr>
    <td>Videla Ventura, Jorge Joseph</td>
    <td>JorgeVidVen</td>
    <td>1</td>
    <td>EP005 Alerts &amp; Incidents (US027 – recognize critical alert)</td>
  </tr>
</table>

![GitHub Contributors Insights](assets/chapter-05/sprint-2/github-insights.png)
*Figura 5.2.2.8.1: Gráfico de contribuciones por integrante – repositorio coldtrace-frontend (contributors to main branch).*

El equipo utilizó Pull Requests como mecanismo de integración, alcanzando un total de 22 PRs mergeados durante el sprint. El uso de Conventional Commits permitió mantener un historial organizado, diferenciando claramente entre funcionalidades nuevas (`feat`), correcciones (`fix`), configuración (`chore`) y documentación (`docs`).

### 5.2.3. Sprint 3

#### 5.2.3.1. Sprint Planning 3

El Sprint 3 tuvo como objetivo principal diseñar, implementar y desplegar la RESTful API de ColdTrace utilizando Spring Boot, siguiendo una arquitectura hexagonal (DDD) con bounded contexts alineados a los definidos en el frontend. El equipo trabajó en 15 Technical Stories más tareas transversales que cubren todos los módulos de la plataforma, desde el registro de organizaciones hasta la gestión de incidencias y reportes de cumplimiento. A continuación se presenta el resumen del Sprint Planning Meeting.

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Sprint #</th>
    <td>Sprint 3</td>
  </tr>
  <tr>
    <th colspan="2">Sprint Planning Background</th>
  </tr>
  <tr>
    <th>Date</th>
    <td>2026-05-18</td>
  </tr>
  <tr>
    <th>Time</th>
    <td>08:00 PM</td>
  </tr>
  <tr>
    <th>Location</th>
    <td>Reunión virtual vía Google Meet</td>
  </tr>
  <tr>
    <th>Prepared By</th>
    <td>Pajés León, Mauricio Luis</td>
  </tr>
  <tr>
    <th>Attendees (to planning meeting)</th>
    <td>Morales Venegas, David Joel / Espinoza Paredes, Frezzia / Cabrera Novoa, Leonardo Moisés / Videla Ventura, Jorge Joseph / Pajés León, Mauricio Luis</td>
  </tr>
  <tr>
    <th>Sprint 2 Review Summary</th>
    <td>En el Sprint 2 se completó y desplegó la primera versión funcional de la Frontend Web Application de ColdTrace en Vercel, con los bounded contexts de Identity & Access, Asset Management, Monitoring y Reports completamente navegables. La aplicación quedó accesible públicamente y el equipo validó los flujos de autenticación, gestión de activos, dashboard operacional y reportes de cumplimiento. Se completaron 34 de 37 tareas planificadas, quedando 3 en progreso para el siguiente sprint.</td>
  </tr>
  <tr>
    <th>Sprint 2 Retrospective Summary</th>
    <td>El equipo reconoció que la coordinación entre los integrantes mejoró significativamente respecto al Sprint 1 gracias a la organización por épicas. Como oportunidad de mejora, se identificó la necesidad de una API backend real para reemplazar el servidor JSON provisional, así como estandarizar el flujo de trabajo con ramas feature y conventional commits también para el backend. Para el Sprint 3 se acordó priorizar la implementación completa de la RESTful API con Spring Boot.</td>
  </tr>
  <tr>
    <th colspan="2">Sprint Goal & User Stories</th>
  </tr>
  <tr>
    <th>Sprint 3 Goal</th>
    <td>Our focus is on delivering a production-ready RESTful API for ColdTrace using Spring Boot. We believe it delivers a robust, scalable, and documented backend that powers all frontend modules. This will be confirmed when the API is fully deployed to Cloud Run, accessible via its public URL with Swagger UI enabled, and all bounded contexts (Identity & Access, Asset Management, Monitoring, Alerts, Reports, Maintenance) expose their endpoints with proper validation, error handling, and OpenAPI documentation.</td>
  </tr>
  <tr>
    <th>Sprint 3 Velocity</th>
    <td>61 Story Points</td>
  </tr>
  <tr>
    <th>Sum of Story Points</th>
    <td>61 Story Points</td>
  </tr>
</table>

#### 5.2.3.2. Aspect Leaders and Collaborators

Durante el Sprint 3, el equipo organizó el trabajo en torno a los Technical Stories del backend, cada uno correspondiente a un bounded context específico. Se designó un líder (L) por cada Technical Story para asegurar la coherencia técnica y la calidad del código, y se asignaron colaboradores (C) entre los demás integrantes.

Los Technical Stories del Sprint 3 fueron los siguientes:

- **TS01 – Organization Sign-up API:** Backend endpoint for organization sign-up (OPE-57).
- **TS03 – Users API:** Backend endpoints for users entity (OPE-59).
- **TS04 – Assets API:** Backend endpoints for assets entity (OPE-60).
- **TS05 – IoT Devices API:** Backend endpoints for IoT devices entity (OPE-61).
- **TS06 – Asset Settings API:** Backend endpoints for asset settings (OPE-62).
- **TS07 – Sensor Readings API:** Backend endpoints for sensor readings (OPE-63).
- **TS08 – Incidents & Notifications API:** Backend endpoints for incidents and notifications (OPE-64).
- **TS09 – Incident Lifecycle Fields API:** Backend endpoints for incident lifecycle fields (OPE-65).
- **TS10 – Reports API:** Backend endpoints for reports (OPE-66).
- **TS12 – Role Assignment API:** Backend endpoint for role assignment (OPE-72).
- **TS13 – Gateways API:** Backend endpoints for gateways (OPE-73).
- **TS14 – Maintenance Schedules API:** Backend endpoints for maintenance schedules (OPE-74).
- **TS15 – Technical Service Requests API:** Backend endpoints for technical service requests (OPE-75).
- **TS16 – Organizations API Base:** Endpoint to create an organization (OPE-78).
- **TS17 – Locations API:** Backend endpoints for locations (OPE-79).

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Team Member</th>
    <th>GitHub Username</th>
    <th>TS01 Sign-Up</th>
    <th>TS03 Users</th>
    <th>TS04 Assets</th>
    <th>TS05 IoT Devices</th>
    <th>TS06 Settings</th>
    <th>TS07 Readings</th>
    <th>TS08 Incidents</th>
    <th>TS09 Lifecycle</th>
    <th>TS10 Reports</th>
    <th>TS12 Roles</th>
    <th>TS13 Gateways</th>
    <th>TS14 Maintenance</th>
    <th>TS15 Service Req.</th>
    <th>TS16 Org Base</th>
    <th>TS17 Locations</th>
  </tr>
  <tr>
    <td>Pajés León, Mauricio Luis</td>
    <td>mauricio-pajes</td>
    <td>L</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>L</td>
    <td>C</td>
    <td>L</td>
    <td>L</td>
  </tr>
  <tr>
    <td>Morales Venegas, David Joel</td>
    <td>David-std2</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>L</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
  </tr>
  <tr>
    <td>Videla Ventura, Jorge Joseph</td>
    <td>JorgeVidVen</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
  </tr>
  <tr>
    <td>Cabrera Novoa, Leonardo Moisés</td>
    <td>u202415820</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>L</td>
    <td>L</td>
    <td>C</td>
    <td>C</td>
  </tr>
  <tr>
    <td>Espinoza Paredes, Frezzia</td>
    <td>fflushh</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
    <td>C</td>
  </tr>
</table>

#### 5.2.3.3. Sprint Backlog 3

El objetivo principal del Sprint 3 fue implementar la RESTful API de ColdTrace utilizando Spring Boot con una arquitectura hexagonal (puertos y adaptadores) y DDD. El equipo gestionó el backlog mediante Linear App, donde cada Technical Story fue registrada como un ticket con estimaciones en horas y Story Points. Cada work item del Sprint Backlog 3 se mantuvo entre 4 y 8 horas para conservar una granularidad adecuada de seguimiento, revisión y cierre. A continuación se presentan los tickets del Sprint Backlog 3.

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; text-align: center;">
  <tr>
    <th>Sprint #</th>
    <td colspan="7">Sprint 3</td>
  </tr>
  <tr>
    <th colspan="2">Technical Story</th>
    <th colspan="6">Work-Item / Task</th>
  </tr>
  <tr>
    <th>Id</th>
    <th>Title</th>
    <th>Id</th>
    <th>Title</th>
    <th>Description</th>
    <th>Estimation (Hours)</th>
    <th>Assigned To</th>
    <th>Status</th>
  </tr>

  <!-- SPRING BOOT FOUNDATION -->
  <tr>
    <td>-</td>
    <td>Spring Boot Foundation</td>
    <td>OPE-56</td>
    <td>Spring Boot API Foundation</td>
    <td>Configurar proyecto Spring Boot con dependencias JPA, Validation, OpenAPI, MySQL</td>
    <td>6</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- TS01 - ORG SIGN-UP -->
  <tr>
    <td>TS01</td>
    <td>Organization Sign-Up</td>
    <td>OPE-57</td>
    <td>Organization Sign-Up API</td>
    <td>Backend endpoint for organization sign-up</td>
    <td>5</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- TS03 - USERS -->
  <tr>
    <td>TS03</td>
    <td>Users API</td>
    <td>OPE-59</td>
    <td>Users API</td>
    <td>Backend endpoints for users entity</td>
    <td>5</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- TS04 - ASSETS -->
  <tr>
    <td>TS04</td>
    <td>Assets API</td>
    <td>OPE-60</td>
    <td>Assets API</td>
    <td>Backend endpoints for assets entity</td>
    <td>6</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>

  <!-- TS05 - IOT DEVICES -->
  <tr>
    <td>TS05</td>
    <td>IoT Devices API</td>
    <td>OPE-61</td>
    <td>IoT Devices API</td>
    <td>Backend endpoints for IoT devices entity</td>
    <td>5</td>
    <td>Videla Ventura, Jorge</td>
    <td>Done</td>
  </tr>

  <!-- TS06 - ASSET SETTINGS -->
  <tr>
    <td>TS06</td>
    <td>Asset Settings API</td>
    <td>OPE-62</td>
    <td>Asset Settings API</td>
    <td>Backend endpoints for asset settings</td>
    <td>4</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>

  <!-- TS07 - SENSOR READINGS -->
  <tr>
    <td>TS07</td>
    <td>Sensor Readings API</td>
    <td>OPE-63</td>
    <td>Sensor Readings API</td>
    <td>Backend endpoints for sensor readings</td>
    <td>6</td>
    <td>Cabrera Novoa, Leonardo</td>
    <td>Done</td>
  </tr>

  <!-- TS08 - INCIDENTS & NOTIFICATIONS -->
  <tr>
    <td>TS08</td>
    <td>Incidents & Notifications API</td>
    <td>OPE-64</td>
    <td>Incidents and Notifications API</td>
    <td>Backend endpoints for incidents and notifications</td>
    <td>6</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>

  <!-- TS09 - INCIDENT LIFECYCLE -->
  <tr>
    <td>TS09</td>
    <td>Incident Lifecycle Fields API</td>
    <td>OPE-65</td>
    <td>Incident Lifecycle Fields API</td>
    <td>Backend endpoints for incident lifecycle fields</td>
    <td>6</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- TS10 - REPORTS -->
  <tr>
    <td>TS10</td>
    <td>Reports API</td>
    <td>OPE-66</td>
    <td>Reports API</td>
    <td>Backend endpoints for reports</td>
    <td>5</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>

  <!-- TS12 - ROLE ASSIGNMENT -->
  <tr>
    <td>TS12</td>
    <td>Role Assignment API</td>
    <td>OPE-72</td>
    <td>Role Assignment API</td>
    <td>Backend endpoint for role assignment</td>
    <td>4</td>
    <td>Morales Venegas, David</td>
    <td>Done</td>
  </tr>

  <!-- TS13 - GATEWAYS -->
  <tr>
    <td>TS13</td>
    <td>Gateways API</td>
    <td>OPE-73</td>
    <td>Gateways API</td>
    <td>Backend endpoints for gateways</td>
    <td>4</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- TS14 - MAINTENANCE -->
  <tr>
    <td>TS14</td>
    <td>Maintenance Schedules API</td>
    <td>OPE-74</td>
    <td>Maintenance Schedules API</td>
    <td>Backend endpoints for maintenance schedules</td>
    <td>4</td>
    <td>Cabrera Novoa, Leonardo</td>
    <td>Done</td>
  </tr>

  <!-- TS15 - TECH SERVICE -->
  <tr>
    <td>TS15</td>
    <td>Technical Service Requests API</td>
    <td>OPE-75</td>
    <td>Technical Service Requests API</td>
    <td>Backend endpoints for technical service requests</td>
    <td>4</td>
    <td>Cabrera Novoa, Leonardo</td>
    <td>Done</td>
  </tr>

  <!-- TS16 - ORG API BASE -->
  <tr>
    <td>TS16</td>
    <td>Organizations API Base</td>
    <td>OPE-78</td>
    <td>Organizations API Base</td>
    <td>Endpoint para crear una organización</td>
    <td>4</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- TS17 - LOCATIONS -->
  <tr>
    <td>TS17</td>
    <td>Locations API</td>
    <td>OPE-79</td>
    <td>Locations API</td>
    <td>Backend endpoints for locations</td>
    <td>4</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- ERROR HANDLING -->
  <tr>
    <td>-</td>
    <td>Error Handling & I18n</td>
    <td>OPE-67</td>
    <td>Error Handling and I18n</td>
    <td>Messages bundle and error handling in backend</td>
    <td>4</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>

  <!-- CROSS-CUTTING (managed outside Linear) -->
  <tr>
    <td>-</td>
    <td>Hexagonal Architecture</td>
    <td>-</td>
    <td>Architecture v2 Refactor</td>
    <td>Refactorizar todos los bounded contexts a arquitectura hexagonal con puertos y adaptadores</td>
    <td>8</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>-</td>
    <td>OpenAPI Documentation</td>
    <td>-</td>
    <td>Swagger/OpenAPI Config</td>
    <td>Configurar SpringDoc OpenAPI 3.0 con anotaciones en todos los endpoints</td>
    <td>5</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>-</td>
    <td>Cloud Run Deployment</td>
    <td>-</td>
    <td>Cloud Run CI/CD</td>
    <td>Configurar Dockerfile, Cloud Run deployment y pipeline CI/CD para producción</td>
    <td>6</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>
  <tr>
    <td>-</td>
    <td>Smoke Validation</td>
    <td>-</td>
    <td>Backend Smoke Tests</td>
    <td>Validar flujos completos: sign-up, creación de activos, registro de lecturas, incidencias y reportes</td>
    <td>6</td>
    <td>Pajés, Mauricio</td>
    <td>Done</td>
  </tr>
</table>

A continuación, se presenta el tablero de Linear App correspondiente al backlog del Sprint 3:

<p align="center">
  <img src="assets/chapter-05/sprint-3/linear-backlog-sprint-3.png" alt="Tablero de Linear App - Sprint 3" width="900">
</p>

*Figura 5.2.3.3.1: Tablero de backlog de Linear App para el Sprint 3.*


#### 5.2.3.4. Development Evidence for Sprint Review

Durante el Sprint 3 se implementó la RESTful API completa de ColdTrace en el repositorio `ICEQ2026/coldtrace-platform`, siguiendo una arquitectura hexagonal con DDD. Todos los commits aplicaron Conventional Commits (`feat`, `fix`, `refactor`, `docs`, `chore`) y GitFlow con ramas `feature/TS*` para las Technical Stories desarrolladas como cambios dedicados. TS16 quedó documentada en Linear como base de organizaciones ya presente dentro del contexto de Identity & Access. Cada Technical Story incluyó su modelo de dominio, servicios de aplicación, persistencia JPA y controladores REST cuando correspondía a una implementación dedicada.

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse;">
  <tr>
    <th>Repository</th>
    <th>Branch</th>
    <th>Commit Id</th>
    <th>Commit Message</th>
    <th>Commit Message Body</th>
    <th>Committed on (Date)</th>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/spring-boot-api-foundation</td>
    <td>9cf6a46</td>
    <td>chore: set up Spring Boot API foundation</td>
    <td>Configuración inicial del proyecto Spring Boot con dependencias base</td>
    <td>04/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/spring-boot-api-foundation</td>
    <td>e9b0e66</td>
    <td>Merge pull request #1 from ICEQ2026/feature/spring-boot-api-foundation</td>
    <td>Fusión de la fundación Spring Boot a develop</td>
    <td>04/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS01-organization-sign-up-api</td>
    <td>200a07c</td>
    <td>feat: add organization sign-up API</td>
    <td>Implementación del registro de organizaciones con validación de email y tax ID</td>
    <td>05/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS01-organization-sign-up-api</td>
    <td>0a9784f</td>
    <td>Merge pull request #2 from ICEQ2026/feature/TS01-organization-sign-up-api</td>
    <td>Fusión de TS01 a develop</td>
    <td>05/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS17-locations-api</td>
    <td>41ff39c</td>
    <td>feat(TS17): implement locations api</td>
    <td>Implementación de API de ubicaciones físicas</td>
    <td>06/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS17-locations-api</td>
    <td>11f9c06</td>
    <td>Merge pull request #4 from ICEQ2026/feature/TS17-locations-api</td>
    <td>Fusión de TS17 Locations API a develop</td>
    <td>06/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS13-gateways-api</td>
    <td>04a7202</td>
    <td>feat(TS13): implement gateways api</td>
    <td>Implementación de API de gateways de red IoT</td>
    <td>06/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS13-gateways-api</td>
    <td>453be73</td>
    <td>Merge pull request #5 from ICEQ2026/feature/TS13-gateways-api</td>
    <td>Fusión de TS13 Gateways API a develop</td>
    <td>06/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS04-assets-api</td>
    <td>543c599</td>
    <td>feat(TS04): expose organization assets api</td>
    <td>Exposición de API REST de activos con CRUD completo</td>
    <td>09/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS12-role-assignment-api</td>
    <td>d7a2bc1</td>
    <td>merge(TS12): integrate role assignment api</td>
    <td>Integración de API de asignación de roles a usuarios</td>
    <td>09/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS06-asset-settings-api</td>
    <td>1b38cb3</td>
    <td>feat(TS06): expose asset settings endpoints</td>
    <td>Exposición de endpoints de configuración de rangos de seguridad por activo</td>
    <td>10/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS05-iot-devices-api</td>
    <td>309c3ed</td>
    <td>feat(TS05): implement iot devices api</td>
    <td>Implementación de API de dispositivos IoT</td>
    <td>10/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS07-sensor-readings-api</td>
    <td>8ac46d7</td>
    <td>feat(TS07): expose sensor readings api</td>
    <td>Exposición de API de lecturas de sensores con temperatura y humedad</td>
    <td>10/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS10-reports-api</td>
    <td>0c4df72</td>
    <td>feat(TS10): expose reports api</td>
    <td>Exposición de API de reportes operativos y de cumplimiento</td>
    <td>10/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS15-technical-service-requests-api</td>
    <td>8470dab</td>
    <td>feat(TS15): expose technical service requests rest api</td>
    <td>Exposición de API de solicitudes de servicio técnico</td>
    <td>11/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS14-maintenance-schedules-api</td>
    <td>27416f9</td>
    <td>feat(maintenance): expose schedule rest api</td>
    <td>Exposición de API de programación de mantenimiento preventivo</td>
    <td>11/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS09-incident-lifecycle-fields-api</td>
    <td>51275e0</td>
    <td>feat(TS09): expose incident lifecycle actions</td>
    <td>Exposición de acciones del ciclo de vida de incidencias</td>
    <td>12/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS03-users-api</td>
    <td>6208dcc</td>
    <td>feat(TS03): validate organization existence on user list, add Jakarta validation to create user request</td>
    <td>Implementación de API de usuarios con validaciones Jakarta</td>
    <td>12/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/TS08-incidents-notifications-api</td>
    <td>6b2826c</td>
    <td>merge(TS08): validate incident references</td>
    <td>Validación de referencias en incidencias antes de creación</td>
    <td>12/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/error-handling-i18n</td>
    <td>5547a08</td>
    <td>merge: integrate error handling i18n</td>
    <td>Internacionalización de errores de validación con mensajes en español e inglés</td>
    <td>12/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/cloud-run-deployment</td>
    <td>c297e97</td>
    <td>build: add Cloud Run deployment configuration</td>
    <td>Configuración de Dockerfile y despliegue en Google Cloud Run</td>
    <td>12/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>feature/backend-smoke-validation-fixes</td>
    <td>c4b974a</td>
    <td>fix: harden backend smoke flows</td>
    <td>Validación de flujos completos de la API</td>
    <td>12/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>main</td>
    <td>21fa35f</td>
    <td>Merge pull request #16 from ICEQ2026/release/1.0.0</td>
    <td>Release v1.0.0 de la RESTful API de ColdTrace</td>
    <td>12/06/2026</td>
  </tr>
  <tr>
    <td>ICEQ2026/coldtrace-platform</td>
    <td>main</td>
    <td>942840a</td>
    <td>Merge pull request #18 from ICEQ2026/release/1.0.1</td>
    <td>Release v1.0.1 con correcciones de validación y documentación README</td>
    <td>12/06/2026</td>
  </tr>
</table>

#### 5.2.3.5. Execution Evidence for Sprint Review

Al término del Sprint 3, la RESTful API de ColdTrace fue desplegada exitosamente en Google Cloud Run, accesible públicamente con documentación OpenAPI habilitada mediante Swagger UI. La API expone 51 operaciones REST organizadas en 6 bounded contexts, todas documentadas con anotaciones Swagger y validación Jakarta.

**Arquitectura de la API implementada:**

La API sigue una arquitectura hexagonal (puertos y adaptadores) donde cada bounded context está aislado en su propio paquete con capas de dominio (agregados, value objects, repositorios), aplicación (servicios de comandos y consultas), infraestructura (persistencia JPA) e interfaces (controladores REST con assemblers DTO). El proyecto utiliza Spring Boot 4.0.6 con Java 26, MySQL como base de datos y SpringDoc OpenAPI 3.0 para documentación.

**Bounded contexts implementados:**

| Bounded Context | Technical Stories | Operaciones REST | Paquete base |
|---|---|---|---|
| Identity & Access | TS01, TS03, TS12 | 7 operaciones | `identityaccess` |
| Asset Management | TS04, TS05, TS06, TS13, TS17 | 20 operaciones | `assetmanagement` |
| Monitoring | TS07 | 4 operaciones | `monitoring` |
| Alerts | TS08, TS09 | 9 operaciones | `alerts` |
| Reports | TS10 | 3 operaciones | `reports` |
| Maintenance | TS14, TS15 | 8 operaciones | `maintenancemanagement` |

**Recursos disponibles:**

- **API Base URL:** https://coldtrace-platform-dtbzbm7bta-uc.a.run.app (producción)
- **Swagger UI:** https://coldtrace-platform-dtbzbm7bta-uc.a.run.app/swagger-ui/index.html
- **OpenAPI Spec:** https://coldtrace-platform-dtbzbm7bta-uc.a.run.app/v3/api-docs
- **Repositorio:** https://github.com/ICEQ2026/coldtrace-platform

**Video de navegación del producto (Sprint 3):** [Ver video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410093_upc_edu_pe/EQb3T9DE7AmQ7aOxNsIfCAIAaqlY68Kt3syw7uDil2npvk?e=hlq0YC&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D)

A continuación se presenta la evidencia de despliegue en Google Cloud Run, los parámetros activos del contenedor y la instancia de Cloud SQL utilizada por la API:

<p align="center">
  <img src="assets/chapter-05/sprint-3/cloud-run-parameters.png" alt="Google Cloud Run Service Settings" width="900">
</p>

*Figura 5.2.3.5.1: Panel de Google Cloud Run con los parámetros de configuración y variables de entorno del backend de ColdTrace.*

<p align="center">
  <img src="assets/chapter-05/sprint-3/cloud-sql-instance.png" alt="Google Cloud SQL MySQL Instance" width="900">
</p>

*Figura 5.2.3.5.2: Instancia de Google Cloud SQL para MySQL utilizada como base de datos de producción de la RESTful API de ColdTrace.*


#### 5.2.3.6. Services Documentation Evidence for Sprint Review

Durante el Sprint 3 se implementó y documentó la RESTful API completa de ColdTrace utilizando Spring Boot y SpringDoc OpenAPI. Cada endpoint fue anotado con `@Tag`, `@Operation` y `@ApiResponses` para generar documentación interactiva accesible desde Swagger UI. A continuación se presenta la documentación de los principales endpoints por bounded context.

**Identity & Access**

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Endpoint</th>
    <th>Method</th>
    <th>Descripción</th>
    <th>Request / Response</th>
  </tr>
  <tr>
    <td>/organization-sign-ups</td>
    <td>POST</td>
    <td>Registrar una nueva organización con su primer usuario administrador</td>
    <td>Body: legalName, commercialName, taxId, contactEmail, firstName, lastName<br>Response: 201 Created + Organization + User</td>
  </tr>
  <tr>
    <td>/organizations</td>
    <td>GET</td>
    <td>Listar todas las organizaciones registradas</td>
    <td>Response: 200 + List&lt;Organization&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/users</td>
    <td>GET</td>
    <td>Listar usuarios de una organización</td>
    <td>Response: 200 + List&lt;User&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/users</td>
    <td>POST</td>
    <td>Crear un nuevo usuario en la organización</td>
    <td>Body: firstName, lastName, email, roleId<br>Response: 201 Created + User</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/users/{userId}/role</td>
    <td>PATCH</td>
    <td>Asignar un rol a un usuario existente</td>
    <td>Body: roleId<br>Response: 200 + User actualizado</td>
  </tr>
  <tr>
    <td>/roles</td>
    <td>GET</td>
    <td>Listar todos los roles del sistema</td>
    <td>Response: 200 + List&lt;Role&gt;</td>
  </tr>
</table>

**Asset Management**

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Endpoint</th>
    <th>Method</th>
    <th>Descripción</th>
    <th>Request / Response</th>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/assets</td>
    <td>GET</td>
    <td>Listar activos de una organización</td>
    <td>Response: 200 + List&lt;Asset&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/assets</td>
    <td>POST</td>
    <td>Crear un nuevo activo (cámara, transporte, almacén)</td>
    <td>Body: name, type, capacity, description, locationId<br>Response: 201 Created + Asset</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/assets/{assetId}</td>
    <td>PUT</td>
    <td>Actualizar datos de un activo existente</td>
    <td>Body: name, type, capacity, description, locationId, status<br>Response: 200 + Asset actualizado</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/locations</td>
    <td>GET</td>
    <td>Listar ubicaciones registradas</td>
    <td>Response: 200 + List&lt;Location&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/gateways</td>
    <td>GET</td>
    <td>Listar gateways IoT registrados</td>
    <td>Response: 200 + List&lt;Gateway&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/iot-devices</td>
    <td>GET</td>
    <td>Listar dispositivos IoT (sensores)</td>
    <td>Response: 200 + List&lt;IoTDevice&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/asset-settings</td>
    <td>GET</td>
    <td>Obtener configuración por defecto de activos</td>
    <td>Response: 200 + AssetSettings</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/assets/{assetId}/settings</td>
    <td>PUT</td>
    <td>Actualizar configuración específica de un activo</td>
    <td>Body: temperature/humidity ranges, IoT params<br>Response: 200 + AssetSettings actualizado</td>
  </tr>
</table>

**Monitoring**

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Endpoint</th>
    <th>Method</th>
    <th>Descripción</th>
    <th>Request / Response</th>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/sensor-readings</td>
    <td>GET</td>
    <td>Obtener lecturas de sensores con filtros (activo, fecha, dispositivo)</td>
    <td>Query: assetId, iotDeviceId, from, to<br>Response: 200 + List&lt;SensorReading&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/sensor-readings</td>
    <td>POST</td>
    <td>Registrar una nueva lectura de sensor</td>
    <td>Body: assetId, iotDeviceId, temperature, humidity, batteryLevel, signalStrength<br>Response: 201 Created + SensorReading</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/sensor-readings/demo-generations</td>
    <td>POST</td>
    <td>Generar lecturas de demostración para pruebas</td>
    <td>Body: assetId, count<br>Response: 201 + List&lt;SensorReading&gt;</td>
  </tr>
</table>

**Alerts**

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Endpoint</th>
    <th>Method</th>
    <th>Descripción</th>
    <th>Request / Response</th>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/incidents</td>
    <td>GET</td>
    <td>Listar incidencias de una organización</td>
    <td>Response: 200 + List&lt;Incident&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/incidents</td>
    <td>POST</td>
    <td>Crear una incidencia térmica</td>
    <td>Body: assetId, deviceId, readingId, type, severity<br>Response: 201 Created + Incident</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/incidents/{incidentId}/acknowledgements</td>
    <td>POST</td>
    <td>Reconocer una incidencia</td>
    <td>Response: 200 + Incident actualizado</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/incidents/{incidentId}/escalation</td>
    <td>PATCH</td>
    <td>Escalar una incidencia no atendida</td>
    <td>Body: escalationReason<br>Response: 200 + Incident actualizado</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/incidents/{incidentId}/corrective-action</td>
    <td>PATCH</td>
    <td>Registrar acción correctiva</td>
    <td>Body: correctiveAction<br>Response: 200 + Incident actualizado</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/incidents/{incidentId}/resolutions</td>
    <td>POST</td>
    <td>Resolver y cerrar una incidencia</td>
    <td>Body: resolutionNotes<br>Response: 200 + Incident cerrado</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/notifications</td>
    <td>GET</td>
    <td>Listar notificaciones de una organización</td>
    <td>Response: 200 + List&lt;Notification&gt;</td>
  </tr>
</table>

**Reports**

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Endpoint</th>
    <th>Method</th>
    <th>Descripción</th>
    <th>Request / Response</th>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/reports</td>
    <td>GET</td>
    <td>Listar reportes generados en la organización</td>
    <td>Response: 200 + List&lt;Report&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/reports</td>
    <td>POST</td>
    <td>Generar un nuevo reporte (daily, monthly, compliance, audit)</td>
    <td>Body: type, title, periodStart, periodEnd<br>Response: 201 Created + Report</td>
  </tr>
</table>

**Maintenance**

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Endpoint</th>
    <th>Method</th>
    <th>Descripción</th>
    <th>Request / Response</th>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/maintenance-schedules</td>
    <td>GET</td>
    <td>Listar programaciones de mantenimiento</td>
    <td>Response: 200 + List&lt;MaintenanceSchedule&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/maintenance-schedules</td>
    <td>POST</td>
    <td>Crear una programación de mantenimiento</td>
    <td>Body: assetId, scheduledDate, frequencyDays, responsibleUserId<br>Response: 201 + MaintenanceSchedule</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/technical-service-requests</td>
    <td>GET</td>
    <td>Listar solicitudes de servicio técnico</td>
    <td>Response: 200 + List&lt;TechnicalServiceRequest&gt;</td>
  </tr>
  <tr>
    <td>/organizations/{organizationId}/technical-service-requests</td>
    <td>POST</td>
    <td>Crear una solicitud de servicio técnico</td>
    <td>Body: assetId, incidentId, issueDescription, priority<br>Response: 201 + TechnicalServiceRequest</td>
  </tr>
</table>

**OpenAPI Documentation Interactive:**

La especificación OpenAPI completa está disponible en Swagger UI, permitiendo probar cada endpoint directamente desde el navegador. La documentación incluye descripciones detalladas de cada operación, schemas de request/response y códigos de respuesta HTTP esperados (200, 201, 400, 404, 409, 500).

A continuación se muestra la documentación interactiva de la API disponible en Swagger UI:

<p align="center">
  <img src="assets/chapter-05/sprint-3/swagger-ui-endpoints.png" alt="Swagger UI OpenAPI Docs" width="900">
</p>

*Figura 5.2.3.6.1: Documentación interactiva de Swagger UI con los endpoints RESTful expuestos.*


#### 5.2.3.7. Software Deployment Evidence for Sprint Review

Durante el Sprint 3 se configuró el despliegue de la RESTful API de ColdTrace en Google Cloud Run, utilizando Docker para la contenerización de la aplicación Spring Boot y Cloud Build como mecanismo de despliegue continuo desde el repositorio.

**Pasos realizados para el despliegue:**

1. Se creó un Dockerfile multi-stage para compilar y empaquetar la aplicación Spring Boot en una imagen Linux optimizada.

2. Se configuró el archivo `application-prod.properties` para resolver la conexión a Google Cloud SQL (MySQL) mediante variables de entorno de producción.

3. Se desplegó manualmente la primera versión en Cloud Run desde la consola de Google Cloud, configurando variables de entorno para la conexión a la base de datos y el perfil activo de Spring.

4. Se configuró Cloud Build para ejecutar el build y despliegue automático ante cada push a la rama `main`, utilizando la integración de Cloud Run con el repositorio de GitHub.

5. Se verificó el correcto funcionamiento del health check de Cloud Run y la accesibilidad pública de la API, incluyendo Swagger UI y los endpoints REST.

**URLs de despliegue:**

- **API URL:** https://coldtrace-platform-dtbzbm7bta-uc.a.run.app
- **Swagger UI:** https://coldtrace-platform-dtbzbm7bta-uc.a.run.app/swagger-ui/index.html
- **OpenAPI Spec:** https://coldtrace-platform-dtbzbm7bta-uc.a.run.app/v3/api-docs
- **Repositorio backend:** https://github.com/ICEQ2026/coldtrace-platform
- **Repositorio frontend (Vercel):** https://coldtrace-frontend-liard.vercel.app
- **Landing Page (GitHub Pages):** https://iceq2026.github.io/landingpage-coldtrace

A continuación se presenta la evidencia del flujo de despliegue continuo en Google Cloud Build y el estado activo del servicio en Google Cloud Run:

<p align="center">
  <img src="assets/chapter-05/sprint-3/cloud-build-deployment-pipeline.png" alt="Google Cloud Build Deployment Pipeline" width="900">
</p>

*Figura 5.2.3.7.1: Pipeline de despliegue continuo ejecutado en Google Cloud Build para compilar y desplegar la API en Cloud Run.*

<p align="center">
  <img src="assets/chapter-05/sprint-3/cloud-run-deployment-status.png" alt="Google Cloud Run Service Status" width="900">
</p>

*Figura 5.2.3.7.2: Estado y métricas del servicio de ColdTrace desplegado en Google Cloud Run.*


#### 5.2.3.8. Team Collaboration Insights during Sprint

Durante el Sprint 3, el equipo trabajó de forma colaborativa en el repositorio `ICEQ2026/coldtrace-platform`, implementando 15 Technical Stories más tareas transversales de arquitectura, documentación y despliegue. Las Technical Stories desarrolladas como cambios dedicados fueron trabajadas en ramas `feature/TS*` independientes y fusionadas mediante Pull Requests revisados por al menos un integrante del equipo.

**Distribución del trabajo:**

Mauricio Pajés lideró la implementación de la fundación del proyecto Spring Boot, los Technical Stories de Organization Sign-Up (TS01), Users API (TS03), Incident Lifecycle Fields API (TS09), Gateways API (TS13), Locations API (TS17) y Organizations API Base (TS16), además de las tareas transversales de arquitectura hexagonal (v2), internacionalización de errores (OPE-67), despliegue en Cloud Run y validación de flujos. David Morales implementó los Technical Stories de Assets API (TS04), Asset Settings API (TS06), Incidents & Notifications API (TS08), Reports API (TS10) y Role Assignment API (TS12). Leonardo Cabrera desarrolló Sensor Readings API (TS07), Maintenance Schedules API (TS14) y Technical Service Requests API (TS15). Jorge Videla implementó IoT Devices API (TS05). Frezzia Espinoza documentó el Sprint Backlog 3 y revisó los endpoints REST.

A continuación se presenta el resumen de participación por integrante basado en el historial de commits del repositorio:

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <th>Integrante</th>
    <th>GitHub Username</th>
    <th>Commits (Sprint 3)</th>
    <th>Technical Stories / Tareas trabajados</th>
  </tr>
  <tr>
    <td>Pajés León, Mauricio Luis</td>
    <td>mauricio-pajes</td>
    <td>~34</td>
    <td>Spring Boot Foundation, TS01 Org Sign-Up, TS03 Users API, TS09 Incident Lifecycle, TS13 Gateways, TS16 Org Base, TS17 Locations, Error Handling I18n, Architecture v2, OpenAPI, Cloud Run, Smoke Validation</td>
  </tr>
  <tr>
    <td>Morales Venegas, David Joel</td>
    <td>David-std2</td>
    <td>~28</td>
    <td>TS04 Assets, TS06 Asset Settings, TS08 Incidents & Notifications, TS10 Reports, TS12 Role Assignment, Architecture v2, refactors</td>
  </tr>
  <tr>
    <td>Cabrera Novoa, Leonardo Moisés</td>
    <td>u202415820</td>
    <td>~10</td>
    <td>TS07 Sensor Readings, TS14 Maintenance Schedules, TS15 Technical Service Requests</td>
  </tr>
  <tr>
    <td>Videla Ventura, Jorge Joseph</td>
    <td>JorgeVidVen</td>
    <td>~2</td>
    <td>TS05 IoT Devices API</td>
  </tr>
  <tr>
    <td>Espinoza Paredes, Frezzia</td>
    <td>fflushh</td>
    <td>~2</td>
    <td>Colaboración en revisión de endpoints y documentación del Sprint Backlog 3</td>
  </tr>
</table>

<p align="center">
  <img src="assets/chapter-05/sprint-3/github-insights-sprint-3.png" alt="GitHub Contributors Insights Sprint 3" width="900">
</p>

*Figura 5.2.3.8.1: Gráfico de contribuciones por integrante – repositorio coldtrace-platform.*

<p align="center">
  <img src="assets/chapter-05/sprint-3/github-insights2-sprint-3.png" alt="GitHub Pulse Commits Sprint 3" width="900">
</p>

*Figura 5.2.3.8.2: Captura de la sección Pulse de GitHub mostrando los commits activos del Sprint 3.*


El equipo utilizó Pull Requests como mecanismo de integración, alcanzando un total de 18 PRs mergeados durante el sprint. El uso de Conventional Commits permitió mantener un historial organizado con tipos como `feat`, `fix`, `refactor`, `style`, `docs`, `chore` y `build`. La implementación de la arquitectura hexagonal (v2) unificó todos los bounded contexts bajo el mismo patrón de puertos y adaptadores, mejorando la mantenibilidad y testabilidad del código.

Con la finalización del Sprint 3, el equipo cuenta con una RESTful API completa y desplegada en producción (Cloud Run), una Frontend Web Application desplegada en Vercel y una Landing Page desplegada en GitHub Pages, formando el ecosistema completo de ColdTrace.

**Resumen de evidencias colaborativas por actividad**

| Actividad colaborativa | Evidencia documentada | Repositorio o herramienta |
|---|---|---|
| Development | Implementación de Technical Stories en ramas `feature/TS*`, commits convencionales y Pull Requests revisados antes de la integración. | `ICEQ2026/coldtrace-platform`, `ICEQ2026/coldtrace-frontend`, GitHub |
| Execution | Validación de la RESTful API desplegada, Swagger UI público, frontend en Vercel y landing page en GitHub Pages. | Google Cloud Run, Cloud Build, Vercel, GitHub Pages |
| Documentation | Actualización del Sprint Backlog 3, documentación de endpoints REST, evidencias de despliegue y sincronización del informe unificado. Frezzia Espinoza participó en la documentación del Sprint Backlog 3 y revisión de endpoints. | Linear App, `ICEQ2026/informe-del-proyecto`, Swagger UI |
| Deployment | Despliegue continuo del backend mediante Cloud Build hacia Cloud Run, con conexión a Cloud SQL y verificación del servicio público. | Google Cloud Build, Google Cloud Run, Cloud SQL |
| Agile tracking | Seguimiento evolutivo de estados To Do, In Progress, To Review y Done para tickets OPE del Sprint 3. | Linear App |

---

## 5.3. Validation Interviews

### 5.3.1. Diseño de Entrevistas

Para la validación de la solución implementada, se diseñaron entrevistas dirigidas a representantes de los segmentos objetivo identificados en las fases iniciales del proyecto. El objetivo fue evaluar la percepción de los usuarios sobre la funcionalidad, usabilidad y pertinencia de la RESTful API de ColdTrace y su integración con la Frontend Web Application.

Se definieron dos perfiles de entrevistados:

- **Dueño o encargado de negocio:** Interesado en la reducción de merma, el cumplimiento sanitario y la generación de reportes operativos.
- **Responsable de operaciones o calidad:** Enfocado en el monitoreo en tiempo real, la gestión de alertas e incidencias y la configuración de parámetros operativos.

Las entrevistas se estructuraron en torno a los siguientes ejes de validación:

1. **Registro y gestión de organizaciones y usuarios:** Validar que el flujo de sign-up y administración de usuarios sea claro y funcional.
2. **Gestión de activos e infraestructura IoT:** Evaluar la facilidad para registrar activos, vincular sensores y configurar gateways.
3. **Monitoreo y alertas:** Verificar que la visualización de lecturas de sensores y la gestión de incidencias térmicas responda a las necesidades operativas.
4. **Reportes y cumplimiento:** Confirmar que la generación de reportes operativos y de cumplimiento sea útil para la toma de decisiones.
5. **Mantenimiento y servicio técnico:** Evaluar la utilidad de la programación de mantenimiento preventivo y la gestión de solicitudes de servicio técnico.

### 5.3.2. Registro de Entrevistas

A continuación se presentan los resultados de las entrevistas realizadas, incluyendo el perfil del entrevistado, los hallazgos principales y las recomendaciones derivadas.

| Entrevistado | Perfil | Hallazgos principales | Recomendaciones |
|---|---|---|---|
| Entrevistado 1 | Dueño de minimarket con cadena de frío propia | La gestión de activos y el monitoreo en tiempo real son las funcionalidades más valoradas. Se identificó la necesidad de alertas más tempranas. | Incorporar un dashboard resumen con indicadores críticos visibles sin necesidad de navegación. |
| Entrevistado 2 | Jefa de calidad en empresa de distribución de alimentos | La generación de reportes de cumplimiento y la trazabilidad de incidencias fueron destacadas como esenciales para auditorías sanitarias. | Permitir la exportación de reportes en formatos adicionales (PDF, Excel). |
| Entrevistado 3 | Encargado de operaciones en almacén refrigerado | La configuración de rangos de seguridad y la programación de mantenimiento preventivo fueron consideradas herramientas útiles para la operación diaria. | Desarrollar vistas móviles para consulta rápida de estado de activos. |
| Entrevistado 4 | Administradora de restaurante con cámaras frigoríficas | La facilidad de uso de la plataforma y la claridad de las alertas fueron bien recibidas. Sugirió incluir notificaciones por WhatsApp. | Integrar canales de notificación adicionales (WhatsApp, SMS). |

<br>

**Registro de Entrevistas de Validación**

<table style="width:100%; border-collapse:collapse;">
  <tbody>
    <tr>
      <td colspan="4" align="center"><strong>Entrevista de Validación N.° 1</strong></td>
    </tr>
    <tr>
      <td colspan="4" align="center">
        <img src="assets/chapter-05/validation/vi-s1-01-jean-pool-coaguila.png" alt="Entrevista de Validación 1" height="350">
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center"><strong>Información del entrevistado</strong></td>
      <td colspan="2" align="center"><strong>Contexto tecnológico</strong></td>
    </tr>
    <tr>
      <td><strong>Nombre completo</strong></td>
      <td>Entrevistado 1</td>
      <td><strong>Dispositivo de mayor frecuencia</strong></td>
      <td>Smartphone (Android) y Laptop (Windows)</td>
    </tr>
    <tr>
      <td><strong>Edad</strong></td>
      <td>45 años</td>
      <td><strong>Sistema operativo/browser</strong></td>
      <td>Windows / Google Chrome</td>
    </tr>
    <tr>
      <td><strong>Definición profesional / cargo</strong></td>
      <td>Dueño de Minimarket "Mendoza & Hijos"</td>
      <td><strong>Canales digitales de comunicación</strong></td>
      <td>WhatsApp y llamadas telefónicas</td>
    </tr>
    <tr>
      <td><strong>Residencia / ubicación</strong></td>
      <td>Santiago de Surco, Lima</td>
      <td><strong>Software especializado utilizado</strong></td>
      <td>Microsoft Excel y Apps bancarias</td>
    </tr>
    <tr>
      <td colspan="2"><strong>Duración:</strong> 05:40</td>
      <td colspan="2"><strong>URL de grabación:</strong> <a href="https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410093_upc_edu_pe/IQBJYgNJwvtfRqy0uHqXB3isAZZnAZqgRG9g19PW-b6JXlk?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&amp;e=qZMIiB">Ver video</a></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Resumen de la entrevista</strong><br><br>
        El entrevistado evaluó la interfaz web de ColdTrace y destacó la facilidad de navegación y la claridad de la información de los activos de refrigeración. Mencionó que la gestión de activos en tiempo real les permitiría reaccionar ante fallas operativas de sus congeladoras. Recomendó incorporar una vista de dashboard tipo resumen rápido (resumen ejecutivo) que permita ver la salud de todos los activos sin tener que entrar al detalle de cada uno.
      </td>
    </tr>
  </tbody>
</table>

<table style="width:100%; border-collapse:collapse;">
  <tbody>
    <tr>
      <td colspan="4" align="center"><strong>Entrevista de Validación N.° 2</strong></td>
    </tr>
    <tr>
      <td colspan="4" align="center">
        <img src="assets/chapter-05/validation/vi-s2-01-rodrigo-vasquez.png" alt="Entrevista de Validación 2" height="350">
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center"><strong>Información del entrevistado</strong></td>
      <td colspan="2" align="center"><strong>Contexto tecnológico</strong></td>
    </tr>
    <tr>
      <td><strong>Nombre completo</strong></td>
      <td>Entrevistado 2</td>
      <td><strong>Dispositivo de mayor frecuencia</strong></td>
      <td>Laptop Corporativa y Tablet Android</td>
    </tr>
    <tr>
      <td><strong>Edad</strong></td>
      <td>34 años</td>
      <td><strong>Sistema operativo/browser</strong></td>
      <td>Windows / Google Chrome</td>
    </tr>
    <tr>
      <td><strong>Definición profesional / cargo</strong></td>
      <td>Jefa de Calidad Alimentaria en "Logística del Frío S.A."</td>
      <td><strong>Canales digitales de comunicación</strong></td>
      <td>Microsoft Teams y correo corporativo</td>
    </tr>
    <tr>
      <td><strong>Residencia / ubicación</strong></td>
      <td>Callao</td>
      <td><strong>Software especializado utilizado</strong></td>
      <td>Microsoft Excel, Power BI</td>
    </tr>
    <tr>
      <td colspan="2"><strong>Duración:</strong> 06:15</td>
      <td colspan="2"><strong>URL de grabación:</strong> <a href="https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410093_upc_edu_pe/IQBJYgNJwvtfRqy0uHqXB3isAZZnAZqgRG9g19PW-b6JXlk?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&amp;e=qZMIiB">Ver video</a></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Resumen de la entrevista</strong><br><br>
        La entrevistada se enfocó en el módulo de reportes y cumplimiento de ColdTrace. Valoró la bitácora diaria y el reporte de cumplimiento sanitario, ya que facilita enormemente la consolidación de evidencia para las auditorías de DIGESA. Recomendó que las exportaciones no solo estén disponibles como datos tabulares, sino que se habilite la exportación en formatos amigables como PDF y Excel con plantillas de presentación.
      </td>
    </tr>
  </tbody>
</table>

<table style="width:100%; border-collapse:collapse;">
  <tbody>
    <tr>
      <td colspan="4" align="center"><strong>Entrevista de Validación N.° 3</strong></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><strong>Información del entrevistado</strong></td>
      <td colspan="2" align="center"><strong>Contexto tecnológico</strong></td>
    </tr>
    <tr>
      <td><strong>Nombre completo</strong></td>
      <td>Entrevistado 3</td>
      <td><strong>Dispositivo de mayor frecuencia</strong></td>
      <td>Tablet corporativa y Laptop Windows</td>
    </tr>
    <tr>
      <td><strong>Edad</strong></td>
      <td>38 años</td>
      <td><strong>Sistema operativo/browser</strong></td>
      <td>Windows / Microsoft Edge</td>
    </tr>
    <tr>
      <td><strong>Definición profesional / cargo</strong></td>
      <td>Encargado de Operaciones de Almacén Frigorífico "AeroFrío"</td>
      <td><strong>Canales digitales de comunicación</strong></td>
      <td>Correo corporativo y WhatsApp</td>
    </tr>
    <tr>
      <td><strong>Residencia / ubicación</strong></td>
      <td>San Luis, Lima</td>
      <td><strong>Software especializado utilizado</strong></td>
      <td>ERP interno y Microsoft Excel</td>
    </tr>
    <tr>
      <td colspan="2"><strong>Duración:</strong> 04:50</td>
      <td colspan="2"><strong>URL de grabación:</strong> <a href="https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410093_upc_edu_pe/IQBJYgNJwvtfRqy0uHqXB3isAZZnAZqgRG9g19PW-b6JXlk?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&amp;e=qZMIiB">Ver video</a></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Resumen de la entrevista</strong><br><br>
        El entrevistado valoró la vista de configuración de rangos seguros de temperatura y la programación de mantenimientos preventivos para los sensores IoT. Consideró que es de gran utilidad para evitar fallas imprevistas. Sugirió desarrollar una aplicación móvil o una interfaz móvil optimizada que les permita a los operadores en campo verificar rápidamente el estado de los sensores y equipos.
      </td>
    </tr>
  </tbody>
</table>

<table style="width:100%; border-collapse:collapse;">
  <tbody>
    <tr>
      <td colspan="4" align="center"><strong>Entrevista de Validación N.° 4</strong></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><strong>Información del entrevistado</strong></td>
      <td colspan="2" align="center"><strong>Contexto tecnológico</strong></td>
    </tr>
    <tr>
      <td><strong>Nombre completo</strong></td>
      <td>Entrevistado 4</td>
      <td><strong>Dispositivo de mayor frecuencia</strong></td>
      <td>iPhone (iOS) y iPad</td>
    </tr>
    <tr>
      <td><strong>Edad</strong></td>
      <td>31 años</td>
      <td><strong>Sistema operativo/browser</strong></td>
      <td>iOS / Safari</td>
    </tr>
    <tr>
      <td><strong>Definición profesional / cargo</strong></td>
      <td>Administradora de Restaurante "El Buen Gusto"</td>
      <td><strong>Canales digitales de comunicación</strong></td>
      <td>WhatsApp y iMessage</td>
    </tr>
    <tr>
      <td><strong>Residencia / ubicación</strong></td>
      <td>Miraflores, Lima</td>
      <td><strong>Software especializado utilizado</strong></td>
      <td>Sistema POS de comandas y Microsoft Excel</td>
    </tr>
    <tr>
      <td colspan="2"><strong>Duración:</strong> 04:10</td>
      <td colspan="2"><strong>URL de grabación:</strong> <a href="https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410093_upc_edu_pe/IQBJYgNJwvtfRqy0uHqXB3isAZZnAZqgRG9g19PW-b6JXlk?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&amp;e=qZMIiB">Ver video</a></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Resumen de la entrevista</strong><br><br>
        Ana evaluó la facilidad de uso del dashboard de monitoreo de temperatura y el módulo de alertas. Destacó que el flujo de reconocimiento de incidencias es claro e intuitivo para el personal del restaurante. Como recomendación de mejora, sugirió agregar canales de notificación adicionales como alertas directas por WhatsApp o SMS para avisar al administrador de guardia cuando el restaurante esté cerrado.
      </td>
    </tr>
  </tbody>
</table>


### 5.3.3. Evaluaciones según heurísticas

Esta sección contiene el proceso de evaluación de las sesiones de validación basado en heurísticas, considerando heurísticas de usabilidad, arquitectura de información e inclusive design de la experiencia propuesta.

#### UX Heuristics & Principles Evaluation
**Usability – Inclusive Design – Information Architecture**

* **CARRERA:** Ingeniería de Software
* **CURSO:** Desarrollo de Aplicaciones Open Source
* **SECCIÓN:** 1ASI0729
* **PROFESORES:** Mori Paiva, Hugo Allan
* **AUDITOR:** Grupo 3 (ICEQ)
* **CLIENTE(S):** Entrevistado 1, Entrevistado 2, Entrevistado 3, Entrevistado 4

---

**SITE o APP A EVALUAR:** ColdTrace

**TAREAS A EVALUAR:**
El alcance de esta evaluación incluye la revisión de la usabilidad de las siguientes tareas:
1. Registro de una organización y usuario administrador.
2. Configuración de un activo de refrigeración (congeladora/cámara).
3. Vinculación de un sensor de temperatura/humedad a un activo.
4. Visualización de telemetría en tiempo real en el dashboard operacional.
5. Visualización del historial de alertas y cambio de estado de una alerta a "Reconocida".
6. Generación y exportación de reportes de cumplimiento diario de la cadena de frío.
7. Registro de orden de trabajo o mantenimiento preventivo.

No están incluidas en esta versión de la evaluación las siguientes tareas:
1. Configuración de alertas en tiempo real vía WhatsApp o SMS (notificaciones externas).
2. Integración directa con sensores físicos (hardware IoT directo).
3. Exportación de reportes en formatos PDF y Excel personalizados.
4. Configuración avanzada de perfiles de usuario corporativos multi-sede.

---

**ESCALA DE SEVERIDAD:**
Los errores serán puntuados tomando en cuenta la siguiente escala de severidad:

| Nivel | Descripción |
|---|---|
| 1 | Problema superficial: puede ser fácilmente superado por el usuario o ocurre con muy poca frecuencia. No necesita ser arreglado a no ser que exista disponibilidad de tiempo. |
| 2 | Problema menor: puede ocurrir un poco más frecuentemente o es un poco más difícil de superar para el usuario. Se le debería asignar una prioridad baja resolverlo de cara al siguiente release. |
| 3 | Problema mayor: ocurre frecuentemente o los usuarios no son capaces de resolverlos. Es importante que sean corregidos y se les debe asignar una prioridad alta. |
| 4 | Problema muy grave: un error de gran impacto que impide al usuario continuar con el uso de la herramienta. Es imperativo que sea corregido antes del lanzamiento. |

---

**TABLA RESUMEN:**

| # | Problema | Escala de severidad | Heurística/Principio violada(o) |
|---|---|---|---|
| 1 | Falta de un dashboard ejecutivo/resumen que muestre el estado consolidado de todos los activos en una sola vista. | 2 | Usability: Reconocimiento antes que recuerdo / Estética y diseño minimalista |
| 2 | La exportación de reportes de cumplimiento de la cadena de frío solo está disponible en formato web de datos tabulares, sin opciones portables. | 2 | Usability: Flexibilidad y eficiencia de uso / Information Architecture: Is it usable? |
| 3 | Las alertas críticas de temperatura fuera de rango solo se notifican en la plataforma web, limitando la reacción oportuna. | 3 | Usability: Ayudar a los usuarios a reconocer, diagnosticar y recuperarse de los errores |
| 4 | Layout del dashboard y tablas no optimizado para pantallas de smartphones (resolución móvil pequeña). | 2 | Inclusive Design: Proporciona experiencias comparables |

---

**DESCRIPCIÓN DE PROBLEMAS:**

**PROBLEMA #1: Falta de un dashboard ejecutivo/resumen consolidado**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Reconocimiento antes que recuerdo / Estética y diseño minimalista
* **Problema:** Actualmente, para conocer la salud general de todos los activos, el usuario debe desplazarse individualmente por cada uno de ellos o verlos en una lista detallada. No existe un gráfico o widget superior que resuma de forma agregada el estado de la cadena de frío (ej. cuántos activos están en estado normal, advertencia o crítico), lo cual incrementa la carga cognitiva y el tiempo de respuesta del usuario.
* **Recomendación:** Incorporar en la parte superior del dashboard una sección de resumen visual (tipo KPI cards) que muestre el conteo de activos en cada estado (Saludable, Alerta, Crítico) para una rápida evaluación del estado del negocio.

**PROBLEMA #2: Ausencia de formatos portables de exportación para auditorías**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Flexibilidad y eficiencia de uso
* **Problema:** En el módulo de reportes, los datos de cumplimiento se visualizan únicamente en tablas HTML dinámicas. Ante una inspección de calidad o auditoría sanitaria, el usuario no tiene una forma directa de exportar estos reportes a formatos físicos o estándares de oficina como PDF y Excel sin depender de capturas de pantalla o impresión web del navegador.
* **Recomendación:** Añadir botones de descarga en la parte superior de cada reporte que generen documentos PDF formateados y hojas de cálculo de Excel con la data limpia y lista para archivo.

**PROBLEMA #3: Alertas de temperatura limitada a la interfaz web**
* **Severidad:** 3
* **Heurística violada:** Usabilidad - Ayudar a los usuarios a reconocer, diagnosticar y recuperarse de los errores
* **Problema:** Si ocurre una ruptura en la cadena de frío fuera del horario de oficina, el administrador no se enterará a menos que tenga el navegador abierto con la sesión iniciada en ColdTrace. Al no existir notificaciones push externas, se incrementa significativamente el riesgo de pérdida de mercadería.
* **Recomendación:** Integrar un servicio de notificaciones SMS o WhatsApp (utilizando APIs como Twilio) para enviar mensajes críticos automáticos cuando un sensor registre temperaturas críticas por más de un intervalo de tiempo especificado.

**PROBLEMA #4: Dificultad de visualización y control en pantallas móviles pequeñas**
* **Severidad:** 2
* **Heurística violada:** Inclusive Design - Proporciona experiencias comparables
* **Problema:** Al acceder a la Frontend Web Application desde un smartphone, las tablas del dashboard operacional y los gráficos de temperatura sufren desbordamiento horizontal u obligan al usuario a hacer zoom, dificultando que el operador en campo monitoree la cadena de frío cómodamente.
* **Recomendación:** Implementar layouts adaptables que conviertan las filas de las tablas en tarjetas verticales independientes (cards layout) cuando se detecte un ancho de pantalla móvil, y hacer los gráficos responsivos al ancho del dispositivo.

---

## 5.4. Video About-the-Product

El video About-the-Product de ColdTrace presenta una demostración navegada de la plataforma, mostrando la Landing Page, la Frontend Web Application desplegada en Vercel y la RESTful API documentada con Swagger UI. El video recorre las principales funcionalidades implementadas durante los Sprint 1, 2 y 3, incluyendo:

- Landing Page informativa con propuesta de valor y formulario de contacto.
- Frontend Web Application con autenticación, gestión de activos, monitoreo operacional, alertas e incidencias, reportes de cumplimiento y configuración operativa.
- RESTful API backend con endpoints documentados en Swagger UI, mostrando los bounded contexts de Identity & Access, Asset Management, Monitoring, Alerts, Reports y Maintenance Management.

**Video About-the-Product (AV2):** [Enlace al video próximamente]

**Video de navegación del producto (Sprint 3):** [Ver video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410093_upc_edu_pe/EQb3T9DE7AmQ7aOxNsIfCAIAaqlY68Kt3syw7uDil2npvk?e=hlq0YC&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D)

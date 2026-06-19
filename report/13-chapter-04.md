# CAPÍTULO IV. PRODUCT UX/UI DESIGN

## 4.1. Style Guidelines.

Un Style Guideline constituye un conjunto de normas y directrices destinadas a estandarizar la redacción, el diseño y la presentación de documentos, contenidos digitales, desarrollos de software u otros productos creativos. A continuación, se detallan las especificaciones correspondientes a los parámetros adoptados en la estructura del proyecto.

### 4.1.1. General Style Guidelines.

**Brand Overview**
ColdTrace es una plataforma digital orientada al monitoreo de temperatura y humedad en la cadena de frío alimentaria. La propuesta visual busca transmitir control, claridad y confianza, utilizando una interfaz limpia, moderna y cercana a dashboards operativos.

**Brand Name**
El nombre "ColdTrace" combina el concepto de frío ("Cold") con seguimiento y control ("Trace"), reforzando la idea de monitoreo continuo de condiciones térmicas en activos refrigerados.

**Typography**
La landing page utiliza dos tipografías principales para mantener una identidad visual clara y consistente:

- `Varela Round` para títulos, encabezados y elementos de alto impacto visual.
- `Inter` para texto general, botones, navegación y contenido operativo.

**Colors**

La paleta parte de una base neutra de blancos y grises suaves, combinada con un azul primario que representa tecnología, monitoreo y confianza.

| **Color**            | **Código HEX** | **Significado**                              |
|---------------------|----------------|----------------------------------------------|
| Azul primario       | `#1B59F8`      | Tecnología, confianza y acción principal      |
| Azul oscuro         | `#0F3FC4`      | Hover y refuerzo visual de acciones           |
| Verde               | `#71DD8C`      | Monitoreo estable y estados positivos         |
| Azul claro          | `#7DBBFF`      | Datos, monitoreo y visuales informativos      |
| Morado              | `#B899EB`      | Apoyo visual en badges y acentos secundarios  |
| Amarillo            | `#FFCC00`      | Advertencia o énfasis                         |
| Blanco              | `#FFFFFF`      | Limpieza y claridad visual                    |
| Gris claro          | `#F4F5F8`      | Fondo general de secciones                    |
| Texto principal     | `#191919`      | Lectura principal                             |
| Texto secundario    | `#525256`      | Texto descriptivo y apoyo visual              |

**Visual Style**
La landing mantiene un estilo visual basado en:

- superficies claras y fondos neutros
- cards con bordes redondeados y sombras suaves
- secciones amplias con buena separación vertical
- mockups y composiciones tipo dashboard en el hero
- acentos cromáticos por bloque funcional, como verde para monitoreo, rojo para alertas, naranja para historial y azul para vista multisede

---

### 4.1.2. Web Style Guidelines.

La landing page fue construida bajo una lógica responsive, adaptándose a escritorio, tablet y móvil. La estructura visual prioriza una lectura clara del contenido, iniciando por la propuesta de valor, continuando con funcionalidades, muestra del producto, testimonios, overview y formulario final de contacto.

La implementación visual considera los siguientes lineamientos:

- barra de navegación fija con fondo translúcido y efecto blur
- botones primarios y secundarios con esquinas redondeadas
- uso de colores semánticos para reforzar monitoreo, alertas, historial y cumplimiento
- animaciones ligeras de aparición, desplazamiento y hover
- componentes visuales consistentes entre desktop y mobile
- interfaz clara para usuarios no técnicos, manteniendo una imagen tecnológica y profesional

---

## 4.2. Information Architecture.

En esta sección se describe cómo se estructura la información dentro de la plataforma ColdTrace, considerando la experiencia tanto en la Landing Page como en la Aplicación Web operativa.

El objetivo es asegurar una navegación fluida, comprensible y eficiente, maximizando la usabilidad y minimizando el esfuerzo cognitivo del usuario.

La arquitectura se apoya en principios de organización jerárquica, sistemas de etiquetado claros, mecanismos de búsqueda efectivos y patrones de navegación intuitivos, diseñados para atender a dos perfiles principales:

- Dueño o encargado de negocio
- Responsable de operaciones o calidad

---

### 4.2.1. Organization Systems.

**Tipo de organización usada:**

Se ha optado por una estructura jerárquica combinada con organización por tareas y roles, lo cual facilita que cada tipo de usuario pueda encontrar rápidamente la funcionalidad que necesita según su objetivo (monitorear, reaccionar, reportar).

---

**Organización de la Landing Page:**

*Encabezado (Header):*
Logo, menú principal (Inicio, Solución, Cómo Funciona, Beneficios, Contacto) y botones (Iniciar Sesión / Registrarse)

*Sección Introductoria (Hero):*
Mensaje: "Monitorea tu cadena de frío en tiempo real y evita pérdidas"
Botón CTA: “Solicitar demo”

*Beneficios:*
- Reducción de merma
- Alertas en tiempo real
- Cumplimiento sanitario

*Cómo Funciona:*
Sensores → Plataforma → Alertas → Decisión

*Casos de uso:*
Minimarkets, restaurantes, almacenes, transporte refrigerado

*Pie de Página (Footer):*
Enlaces legales, contacto, redes sociales

---

**Organización de la Aplicación Web (por rol)**

-Usuario Operativo / Dueño

*Inicio:* Vista general con estado de activos y alertas
*Monitoreo:* Visualización en tiempo real
*Alertas:* Incidencias activas
*Historial:* Lecturas pasadas
*Reportes:* Exportación de datos
*Perfil:* Configuración básica

-Responsable de Operaciones / Calidad

*Dashboard:* Vista consolidada de múltiples activos
*Activos:* Gestión de equipos y sensores
*Incidents:* Seguimiento y control
*Reportes:* Trazabilidad y auditoría
*Configuración:* Parámetros y rangos

---

### 4.2.2. Labeling Systems.

Los sistemas de etiquetado usados en ColdTrace tienen como objetivo lograr una interfaz clara, rápida y comprensible en contextos operativos.

**1. Etiquetas Textuales (Text Labels):**

Acción directa y clara:

- “Ver estado”
- “Configurar rango”
- “Revisar alertas”
- “Generar reporte”

**2. Etiquetas de Encabezado (Headings):**

H1: Dashboard
H2: Alertas activas
H3: Detalle del activo

**3. Etiquetas Icónicas (Iconic Labels):**

- Dashboard
- Temperatura
- Alertas
- Reportes
- Configuración

**4. Tooltips:**

- “Temperatura fuera de rango”
- “Sin conexión”
- “Última lectura registrada”

---

### 4.2.3. SEO Tags and Meta Tags

| Etiqueta | Contenido |
| --- | --- |
| title | ColdTrace - Monitoreo de cadena de frío en tiempo real |
| description | Plataforma para monitorear temperatura y humedad en negocios alimentarios. Reduce pérdidas y mejora el control sanitario. |
| keywords | cadena de frío, monitoreo temperatura, sensores IoT, alimentos, trazabilidad, Perú |
| viewport | width=device-width, initial-scale=1.0 |
| author | ColdTrace |
| copyright | © 2026 ColdTrace |

### 4.2.4. Searching Systems.

El sistema de búsqueda de ColdTrace permite localizar de manera rápida y eficiente la información operativa relevante dentro de la plataforma.

- **Búsqueda por activo:**
  Permite localizar equipos mediante el nombre de la cámara frigorífica, sensor o unidad de transporte.

- **Filtros por estado:**
  Clasificación de activos según su condición operativa: normal, alerta o desconectado.

- **Filtros por ubicación:**
  Segmentación por sucursal, almacén o zona geográfica.

- **Filtros por tipo:**
  Clasificación según el tipo de activo: cámara, sensor o unidad de transporte.

---

### 4.2.5. Navigation Systems.

La plataforma cuenta con un menú lateral (sidebar) adaptable según el dispositivo, garantizando accesibilidad tanto en escritorio como en móviles.

La navegación está orientada a acciones críticas y al flujo operativo del usuario.

**Flujo principal:**
Registro → Configuración → Monitoreo → Alertas → Reportes

La experiencia de navegación es intuitiva, priorizando la rapidez de respuesta y la toma de decisiones ante incidencias.

---

## 4.3. Landing Page UX/UI Design

### 4.3.1. Landing Page Wireframe.

Los wireframes de la Landing Page fueron diseñados con el objetivo de definir la estructura inicial del sitio, priorizando la organización del contenido y la experiencia del usuario.
En esta etapa se establecieron las principales secciones del sitio, como el encabezado de navegación, la sección principal (hero), características del producto, beneficios, testimonios y formulario de contacto.
Asimismo, se consideró una versión responsive, adaptando la distribución de los elementos para dispositivos móviles, garantizando una navegación clara y accesible en diferentes tamaños de pantalla.

![Wireframe Landing Page](/report/assets/chapter-04/landingpagedesign/Wireframe_Landing_Page.png)

![Wireframe Landing Page Mobile](/report/assets/chapter-04/landingpagedesign/Wireframe_Landing_Page_Mobile.png)

---

### 4.3.2. Landing Page Mock-up.

Los mockups de la Landing Page representan la versión visual final del diseño, incorporando colores, tipografías y estilos definidos en el sistema de diseño.
En esta etapa se aplicaron los lineamientos de branding del proyecto, incluyendo el uso de colores principales, jerarquía tipográfica y elementos visuales que refuerzan la identidad del producto.
Además, se mantuvo consistencia entre la versión desktop y mobile, asegurando una experiencia uniforme para el usuario en cualquier dispositivo.

![Mockup Landing Page](/report/assets/chapter-04/landingpagedesign/Mockup_Landing_Page.png)

![Mockup Landing Page Mobile](/report/assets/chapter-04/landingpagedesign/Mockup_Landing_Page_Mobile.png)

---

## 4.4. Web Applications UX/UI Design.

### 4.4.1. Web Applications Wireframes.

Los wireframes de la aplicación web fueron diseñados para definir la estructura funcional de las principales pantallas del sistema.
En esta etapa se identificaron los elementos clave de interacción, como paneles de control, visualización de datos, navegación entre secciones y componentes necesarios para la gestión del sistema.
Estos wireframes permiten validar la distribución de información antes de la implementación visual, asegurando que las funcionalidades respondan a las necesidades del usuario.

![Wireframe Web Application 1](/report/assets/chapter-04/landingpagedesign/Wireframe_Web_Application-1.png)

![Wireframe Web Application 2](/report/assets/chapter-04/landingpagedesign/Wireframe_Web_Application-2.png)

![Wireframe Web Application 3](/report/assets/chapter-04/landingpagedesign/Wireframe_Web_Application-3.png)

---

### 4.4.2. Web Applications Wireflow Diagrams.

Los wireflow diagrams representan el flujo de interacción del usuario dentro de la aplicación, mostrando la navegación entre pantallas y las acciones que el usuario puede realizar en cada etapa.
Estos diagramas permiten entender el recorrido del usuario (user flow), facilitando la identificación de puntos clave de interacción y mejorando la experiencia general del sistema.

![wireflows diagram](/report/assets/chapter-04/wireflowdiagram/wireflows-diagram.png)

---

### 4.4.3. Web Applications Mock-ups.

Los mockups de la aplicación web muestran la representación visual final de las interfaces del sistema, incorporando estilos, colores y componentes definidos en el diseño.
En esta etapa se buscó mantener consistencia visual con la Landing Page, asegurando una identidad unificada del producto.
Asimismo, se priorizó la claridad en la presentación de información y la facilidad de uso, permitiendo que el usuario interactúe de manera intuitiva con las funcionalidades del sistema.

![Mockup Web Application 1](/report/assets/chapter-04/landingpagedesign/Mockup_Web_Application-1.png)

![Mockup Web Application 2](/report/assets/chapter-04/landingpagedesign/Mockup_Web_Application-2.png)

![Mockup Web Application 3](/report/assets/chapter-04/landingpagedesign/Mockup_Web_Application-3.png)

---

### 4.4.4. Web Applications User Flow Diagrams.

Los User Flow Diagrams representan el recorrido que sigue el usuario dentro de la aplicación para cumplir objetivos específicos, considerando las distintas interacciones y decisiones que se presentan en cada etapa.
Estos diagramas integran las vistas principales del sistema con los flujos de navegación, permitiendo visualizar tanto la ruta esperada (happy path) como posibles escenarios alternativos (unhappy paths). De esta manera, se facilita la comprensión del comportamiento del usuario y se asegura coherencia con los wireflows y mockups previamente definidos.

### User Flow 1 : Detectar alertas de temperatura a tiempo para evitar pérdidas.

![userflowdiagram1](/report/assets/chapter-04/userflowdiagram/userflowdiagram1.png)

### User Flow 2 : Obtener reportes para supervisión y control.

![userflowdiagram2](/report/assets/chapter-04/userflowdiagram/userflowdiagram2.png)

### User Flow 3 : Monitorear el estado general de los equipos en tiempo real.

![userflowdiagram3](/report/assets/chapter-04/userflowdiagram/userflowdiagram3.png)

---

## 4.5. Web Applications Prototyping.

En esta sección se presenta el prototipo navegable de la aplicación web de ColdTrace, el cual permite simular la interacción del usuario con las principales vistas del sistema y validar la navegación definida previamente en los wireflows y user flows.

El prototipo integra las pantallas clave del producto, como monitoreo, alertas, reportes y gestión general de la operación, manteniendo coherencia con los lineamientos visuales y funcionales definidos en las etapas anteriores del diseño.

![prototype navigation sprint 1](assets/chapter-04/prototyping/prototype-navigation-sprint-1.png)

[Ver video demostrativo del prototipo de navegación – ColdTrace](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202410093_upc_edu_pe/IQDF6wu_w86bRIH68kr6ehziAe9K_FC1ARRsa-i6G07RpXk?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=FXKoP5)

---

## 4.6. Domain-Driven Software Architecture.

### 4.6.1. Design-Level Event Storming.

![boundedcontext](assets/chapter-04/boundedcontext/boundedcontext.png)

## 1. Bounded Context: Identity & Access
### Explicación
Este contexto gestiona el acceso de los usuarios al sistema mediante creación de cuenta, inicio de sesión, recuperación de contraseña, usuarios internos, roles y permisos. En la implementación frontend actual corresponde al módulo `identity-access`; en la arquitectura backend objetivo se proyecta como un servicio Spring Boot encargado de autenticación, autorización y administración de identidad.

### Justificación
Se separa este contexto porque la seguridad y la administración de acceso son aspectos críticos y transversales. Al aislar Identity & Access:
- Se reduce el riesgo de accesos no autorizados.
- Se facilita la implementación de mecanismos avanzados como OAuth, JWT o autenticación multifactor.
- Se evita mezclar usuarios, roles y permisos con la lógica operativa de activos, monitoreo o reportes.
- Permite escalar y mantener este módulo de forma independiente.


## 2. Bounded Context: Asset Management

### Explicación
Este contexto administra el ciclo de vida de los activos refrigerados y su infraestructura IoT: cámaras frigoríficas, unidades de transporte, sensores, gateways, estado de calibración, conectividad, rangos de seguridad y parámetros operativos. En la implementación frontend actual corresponde al módulo `asset-management`; en la arquitectura backend objetivo se proyecta como un servicio Spring Boot responsable de persistir y exponer la configuración operativa que consumen monitoreo, alertas y reportes.

### Justificación
Se separa porque la configuración de activos y dispositivos define el comportamiento del monitoreo. Al aislarlo:
- Se centraliza la lógica de activos, sensores, gateways, calibración y rangos.
- Se reducen errores por parámetros mal definidos.
- Se permite modificar reglas operativas sin afectar la captura de lecturas ni los reportes.
- Facilita la reutilización del modelo de activos en otras operaciones IoT.


## 3. Bounded Context: Monitoring

### Explicación
Es el núcleo operacional del sistema. Aquí se reciben, registran y consultan las lecturas de temperatura, humedad y conectividad. También se evalúa si las mediciones están dentro o fuera de los rangos definidos por Asset Management y se alimentan las vistas de dashboard. En la implementación frontend actual corresponde al módulo `monitoring`; en backend se proyecta como un servicio Spring Boot optimizado para telemetría e historial de lecturas.

### Justificación
Se separa porque es el proceso principal del negocio. Este contexto:
- Maneja alta carga de datos en tiempo real.
- Requiere eficiencia y baja latencia.
- Permite escalar de forma independiente (por ejemplo, usando streaming).
- Evita mezclar procesamiento de datos con visualización o alertas.


## 4. Bounded Context: Alerts

### Explicación
Se encarga de generar notificaciones cuando una medición está fuera de los rangos establecidos. También gestiona la visualización de alertas en el sistema.

### Justificación
Se desacopla para permitir una respuesta rápida ante eventos críticos:
- Permite implementar distintos canales de notificación (email, SMS, etc.).
- Evita sobrecargar el contexto de monitoreo.
- Facilita la extensión del sistema sin afectar la lógica principal.


## 5. Bounded Context: Reports & Compliance

### Explicación
Gestiona la generación, visualización y exportación de reportes operativos y evidencia de cumplimiento. Incluye bitácora diaria, historial de eventos, reportes sanitarios, reportes mensuales, hallazgos de cumplimiento y evidencia de auditoría. En la implementación frontend actual corresponde al módulo `reports`, incluyendo la vista `audit-evidence`; en backend se proyecta como un servicio Spring Boot encargado de consolidar información histórica y preparar evidencia exportable.

### Justificación
Se separa porque el análisis, cumplimiento y auditoría tienen necesidades distintas al procesamiento operativo:
- Requiere consultas complejas y agregaciones.
- Puede optimizarse con técnicas como caching o data warehousing.
- Evita afectar el rendimiento del monitoreo en tiempo real.
- Permite centralizar evidencia documental sin crear un bounded context de auditoría separado.


## 6. Bounded Context: Maintenance Management

### Explicación
Este contexto gestiona actividades de mantenimiento preventivo y solicitudes de servicio técnico asociadas a activos y dispositivos. En la implementación frontend actual corresponde al módulo `maintenance-management`; en backend se proyecta como un servicio Spring Boot que registra programación, atención, cierre y evidencia técnica de cada intervención.

### Justificación
Se separa porque el mantenimiento tiene un ciclo operativo propio:
- Permite planificar actividades preventivas sin mezclar esa lógica con el monitoreo.
- Conserva historial técnico por activo.
- Ayuda a relacionar fallas, alertas y acciones de soporte.
- Puede evolucionar hacia automatización de órdenes de trabajo sin afectar otros contextos.


## Problemas Identificados y Relación con Contextos

- Datos inconsistentes del sensor → Monitoring
- Validación insuficiente → Monitoring
- Configuración manual del sensor → Asset Management
- Parámetros mal definidos → Asset Management
- Generación de reportes lenta → Reports & Compliance
- Proceso de auditoría manual → Reports & Compliance
- Seguimiento técnico reactivo → Maintenance Management

### Justificación General
Estos problemas evidencian la necesidad de separar responsabilidades. La aplicación de Bounded Contexts permite:
- Reducir el acoplamiento entre módulos.
- Mejorar la mantenibilidad del sistema.
- Escalar componentes de forma independiente.
- Aplicar principios de Domain-Driven Design de manera efectiva.


### 4.6.2. Software Architecture Context Diagram.

El diagrama de contexto de ColdTrace muestra, de forma general, a los actores que interactúan con la plataforma y a los sistemas externos de los que depende. En esta vista se ubica a ColdTrace como sistema central y se identifican sus principales entradas y salidas.

![contextdiagram](assets/chapter-04/contextdiagram/contextdiagram.png)

*Figure 4.6.2. ColdTrace System Context Diagram following the C4 model.*

> PlantUML source: [`assets/chapter-04/contextdiagram/contextdiagram.puml`](assets/chapter-04/contextdiagram/contextdiagram.puml).

### 4.6.3. Software Architecture Container Diagrams.

El diagrama de contenedores muestra cómo se divide ColdTrace en sus principales aplicaciones, servicios y bases de datos. En esta vista se identifican la landing page, la web application, el API Gateway, el IoT Gateway y los servicios Spring Boot proyectados por bounded context. Aunque la entrega actual funciona con Angular y `json-server`, este diagrama representa la arquitectura backend objetivo que dará soporte real a los módulos ya validados en frontend.

![containerdiagram](assets/chapter-04/containerdiagram/containerdiagram.png)

*Figure 4.6.3. ColdTrace System Container Diagram.*

> PlantUML source: [`assets/chapter-04/containerdiagram/containerdiagram.puml`](assets/chapter-04/containerdiagram/containerdiagram.puml).

### 4.6.4. Software Architecture Components Diagrams.

En esta sección se presenta la vista de componentes de ColdTrace por bounded context, alineada con el backend Spring Boot actual ubicado en `coldtrace-platform`. Cada diagrama muestra los REST controllers, command/query services, facades ACL, repositorios de dominio, adapters JPA, event handlers y tablas MySQL que existen en el código.

- **Component diagram - Identity & Access:** Shows organization sign-up, organization management, user management, role queries, permission metadata and the ACL facade consumed by other bounded contexts.

![Component View Identity & Access BC](assets/chapter-04/diagramcomponents/component-autenticacion.png)

*Figure 4.6.4.1. Identity & Access BC Component Diagram.*

> PlantUML source: [`assets/chapter-04/diagramcomponents/component-autenticacion.puml`](assets/chapter-04/diagramcomponents/component-autenticacion.puml).

- **Component diagram - Asset Management:** Shows locations, assets, gateways, IoT devices, asset settings, organization validation and the facade used by Monitoring, Alerts, Reports and Maintenance.

![Component View Asset Management BC](assets/chapter-04/diagramcomponents/component-sensores.png)

*Figure 4.6.4.2. Asset Management BC Component Diagram.*

> PlantUML source: [`assets/chapter-04/diagramcomponents/component-sensores.puml`](assets/chapter-04/diagramcomponents/component-sensores.puml).

- **Component diagram - Monitoring:** Shows sensor reading registration, demo reading generation, query services, validation through Identity & Access and Asset Management facades, and the published reading snapshots.

![Component View Monitoring BC](assets/chapter-04/diagramcomponents/component-monitoreo.png)

*Figure 4.6.4.3. Monitoring BC Component Diagram.*

> PlantUML source: [`assets/chapter-04/diagramcomponents/component-monitoreo.puml`](assets/chapter-04/diagramcomponents/component-monitoreo.puml).

- **Component diagram - Alerts:** Shows incident creation, acknowledgement, escalation, corrective actions, resolution, notification read models and incident snapshots.

![Component View Alerts BC](assets/chapter-04/diagramcomponents/component-alertas.png)

*Figure 4.6.4.4. Alerts BC Component Diagram.*

> PlantUML source: [`assets/chapter-04/diagramcomponents/component-alertas.puml`](assets/chapter-04/diagramcomponents/component-alertas.puml).

- **Component diagram - Reports:** Shows report generation from asset, reading and incident snapshots, persisted summary metrics and report query endpoints.

![Component View Reports BC](assets/chapter-04/diagramcomponents/component-reportes.png)

*Figure 4.6.4.5. Reports BC Component Diagram.*

> PlantUML source: [`assets/chapter-04/diagramcomponents/component-reportes.puml`](assets/chapter-04/diagramcomponents/component-reportes.puml).

- **Component diagram - Maintenance Management:** Shows the components responsible for scheduling preventive maintenance, registering technical service requests, and closing work with evidence.

![Component View Maintenance Management BC](assets/chapter-04/diagramcomponents/component-auditoria.png)

*Figure 4.6.4.6. Maintenance Management BC Component Diagram.*

> PlantUML source: [`assets/chapter-04/diagramcomponents/component-auditoria.puml`](assets/chapter-04/diagramcomponents/component-auditoria.puml).

---

## 4.7. Software Object-Oriented Design.

### 4.7.1. Class Diagrams.

La documentación del diagrama de clases de ColdTrace se presenta en **tres etapas**. Las tres fueron actualizadas según las clases Java existentes en el backend actual.

#### Stage 1: DDD-oriented Class Diagram

En esta primera etapa se modela el dominio de ColdTrace con enfoque **DDD** y tipos Java. Aquí se identifican los aggregates, value objects, enumeraciones y relaciones por identificador que existen en `src/main/java`.

Principales clases por bounded context:

- **BC Identity & Access:** `Organization`, `User`, `Role`, `EmailAddress`, `RoleName` y `Permission`.
- **BC Asset Management:** `Location`, `Asset`, `Gateway`, `IoTDevice`, `AssetSettings`, `LocationName`, `AssetUuid`, `GatewayUuid` e `IoTDeviceUuid`.
- **BC Monitoring:** `SensorReading` como aggregate de telemetría persistida.
- **BC Alerts:** `Incident`, `Notification`, `IncidentSeverity`, `IncidentStatus`, `NotificationChannel` y `NotificationStatus`.
- **BC Reports:** `Report`, que persiste métricas resumidas de activos, lecturas e incidentes.
- **BC Maintenance Management:** `MaintenanceSchedule` y `TechnicalServiceRequest`.

Las referencias entre bounded contexts se implementan con identificadores `Long` y facades ACL. Por ejemplo, `SensorReading` guarda `assetId`, `iotDeviceId`, `gatewayId` y `locationId`; `Incident` guarda `assetId`, `deviceId` y `readingId`; `TechnicalServiceRequest` puede guardar `incidentId`; `Report` almacena métricas agregadas en lugar de colecciones embebidas.

![Class Diagram Stage 1 DDD](assets/chapter-04/classdiagram/classdiagram-etapa1-ddd.png)

*Figure 4.7.1.1. Stage 1 - DDD-oriented Class Diagram.*

> PlantUML source: [`assets/chapter-04/classdiagram/classdiagram-etapa1-ddd.puml`](assets/chapter-04/classdiagram/classdiagram-etapa1-ddd.puml).

#### Stage 2: Group Classes by Bounded Context

En esta segunda etapa las clases se agrupan según el bounded context al que pertenecen. Esto permite visualizar mejor las fronteras del dominio.

Agrupamiento aplicado en el diagrama:

- **BC Identity & Access** (azul claro): `Organization`, `User`, `Role` y sus value objects.
- **BC Asset Management** (rosado): `Location`, `Asset`, `Gateway`, `IoTDevice`, `AssetSettings` y sus value objects.
- **BC Monitoring** (verde): `SensorReading`.
- **BC Alerts** (amarillo): `Incident`, `Notification` y sus enums de severidad, estado y canal.
- **BC Reports** (morado): `Report`.
- **BC Maintenance Management** (naranja): `MaintenanceSchedule` y `TechnicalServiceRequest`.

Las relaciones **internas a cada BC** quedan contenidas dentro del paquete correspondiente. Las relaciones entre bounded contexts aparecen como asociaciones por identificador, ya que el backend evita navegar objetos de otros contextos directamente.

![Class Diagram Stage 2 Bounded Context](assets/chapter-04/classdiagram/classdiagram-etapa2-bc.png)

*Figure 4.7.1.2. Stage 2 - Group classes by Bounded Context.*

> PlantUML source: [`assets/chapter-04/classdiagram/classdiagram-etapa2-bc.puml`](assets/chapter-04/classdiagram/classdiagram-etapa2-bc.puml).

#### Stage 3: Value Object, Entity and Aggregate Identification

En esta tercera etapa las clases se clasifican como **Aggregate**, **Value Object**, **enum** y **DomainEvent** según el código actual. Las entidades JPA de persistencia no se mezclan con el modelo de dominio y se documentan en la sección de base de datos.

Con esta clasificación se cumple una regla fundamental de DDD: fuera del aggregate se referencia a otros contextos por identificadores o por snapshots obtenidos desde facades ACL. En el backend actual esos identificadores son `Long` y algunos identificadores de negocio se modelan como value objects (`AssetUuid`, `GatewayUuid`, `IoTDeviceUuid`, `LocationName`, `EmailAddress`, `RoleName`).

**BC Identity & Access.** Aggregates → `Organization`, `User` y `Role`. Value Objects → `EmailAddress`, `RoleName` y `Permission`. No existen clases de dominio `Session`, `Subscription` ni `NotificationPreference` en el backend actual.

![Class Diagram Stage 3 BC Identity & Access](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-autenticacion.png)

*Figure 4.7.1.3.1. Stage 3 - BC Identity & Access.*

> PlantUML source: [`assets/chapter-04/classdiagram/classdiagram-etapa3-bc-autenticacion.puml`](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-autenticacion.puml).

**BC Asset Management.** Aggregates → `Location`, `Asset`, `Gateway`, `IoTDevice` y `AssetSettings`. Value Objects → `LocationName`, `AssetUuid`, `GatewayUuid` e `IoTDeviceUuid`. El backend actual no contiene `Sensor`, `AssetBuilder`, `AssetDirector`, `TemperatureRange` ni `HumidityRange` como clases de dominio.

![Class Diagram Stage 3 BC Asset Management](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-gestion-sensores.png)

*Figure 4.7.1.3.2. Stage 3 - BC Asset Management.*

> PlantUML source: [`assets/chapter-04/classdiagram/classdiagram-etapa3-bc-gestion-sensores.puml`](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-gestion-sensores.puml).

**BC Monitoring.** Aggregate → `SensorReading`, que persiste una lectura de telemetría con temperatura, humedad, indicador `outOfRange`, batería, señal y referencias al activo, dispositivo IoT, gateway y ubicación. También publica `SensorReadingRecordedEvent`.

![Class Diagram Stage 3 BC Monitoring](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-monitoreo.png)

*Figure 4.7.1.3.3. Stage 3 - BC Monitoring.*

> PlantUML source: [`assets/chapter-04/classdiagram/classdiagram-etapa3-bc-monitoreo.puml`](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-monitoreo.puml).

**BC Alerts.** Aggregates → `Incident` y `Notification`. Enums → `IncidentSeverity`, `IncidentStatus`, `NotificationChannel` y `NotificationStatus`. También publica `IncidentOpenedEvent`. No existen aggregates `Alert` ni `AlertRule` en el backend actual.

![Class Diagram Stage 3 BC Alerts](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-alertas.png)

*Figure 4.7.1.3.4. Stage 3 - BC Alerts.*

> PlantUML source: [`assets/chapter-04/classdiagram/classdiagram-etapa3-bc-alertas.puml`](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-alertas.puml).

**BC Reports.** Aggregate → `Report`, que persiste métricas resumidas del periodo consultado: cantidad de activos, lecturas, lecturas fuera de rango, incidentes, incidentes abiertos, promedios y porcentaje de cumplimiento. También publica `ReportGeneratedEvent`.

![Class Diagram Stage 3 BC Reports](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-reportes.png)

*Figure 4.7.1.3.5. Stage 3 - BC Reports.*

> PlantUML source: [`assets/chapter-04/classdiagram/classdiagram-etapa3-bc-reportes.puml`](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-reportes.puml).

**BC Maintenance Management.** Aggregates → `MaintenanceSchedule` y `TechnicalServiceRequest`. La evidencia de cierre está modelada como campo `evidence` dentro de `TechnicalServiceRequest`; no existe una clase `ServiceEvidence` independiente.

![Class Diagram Stage 3 BC Maintenance Management](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-auditoria.png)

*Figure 4.7.1.3.6. Stage 3 - BC Maintenance Management.*

> PlantUML source: [`assets/chapter-04/classdiagram/classdiagram-etapa3-bc-auditoria.puml`](assets/chapter-04/classdiagram/classdiagram-etapa3-bc-auditoria.puml).

---

## 4.8. Database Design.

### 4.8.1. Database Diagrams.

El diagrama de base de datos se actualizó desde las entidades JPA reales del backend. La configuración actual usa MySQL, Hibernate `ddl-auto=update` y `SnakeCasePhysicalNamingStrategy`, por lo que los nombres de columna se derivan de los atributos Java en `snake_case`. Las relaciones se muestran como **logical FK** cuando el código usa campos `Long` en lugar de anotaciones `@ManyToOne`.

![ColdTrace ERD 3FN](assets/chapter-04/databasediagram/databasediagram.png)

*Figure 4.8.1.1. ColdTrace Entity-Relationship Diagram normalized to 3NF.*

> PlantUML source: [`assets/chapter-04/databasediagram/databasediagram.puml`](assets/chapter-04/databasediagram/databasediagram.puml).

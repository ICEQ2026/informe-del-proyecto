# Capítulo I: Introducción

## 1.1 Startup Profile

### 1.1.1 Descripción de la Startup

ICEQ (Ice Quality Monitoring) es una startup tecnológica enfocada en mejorar el control de la cadena de frío dentro del sector alimentario mediante una propuesta SaaS accesible y escalable. Su producto principal es **ColdTrace**, una plataforma web de monitoreo inteligente que centraliza la supervisión de temperatura y humedad en cámaras frigoríficas, almacenes y unidades de transporte refrigerado.

La solución integra sensores IoT con una aplicación web accesible desde navegador, lo que permite a supermercados, restaurantes, operadores logísticos y centros de distribución visualizar el estado de sus activos en tiempo real, recibir alertas ante desviaciones críticas, consultar reportes históricos y recibir asistencia inteligente para resolver incidencias bajo aprobación humana. A diferencia de esquemas manuales o aislados, ColdTrace se plantea como una solución digital escalable, apoyada en tecnologías open source, con planes de suscripción por nivel de operación para reducir pérdidas, elevar la capacidad de respuesta operativa y reforzar el cumplimiento sanitario.

**Misión:** Brindar a las empresas del sector alimentario una plataforma confiable, accesible y escalable para vigilar la cadena de frío en tiempo real, anticiparse a fallas de refrigeración, tomar decisiones mejor informadas basadas en datos y adoptar progresivamente funcionalidades avanzadas según su plan.

**Visión:** Consolidarnos como una referencia regional en monitoreo digital de cadena de frío, impulsando operaciones alimentarias más seguras, eficientes y sostenibles mediante soluciones web modernas, abiertas a integración, con asistencia inteligente supervisada y un modelo SaaS viable para negocios de distintos tamaños.

### 1.1.2 Perfiles de integrantes del equipo

| Foto | Código | Nombre completo | Carrera | Perfil y habilidades |
|:-----|:-------|:----------------|:--------|:---------------------|
| ![Leonardo](/report/assets/chapter-01/team/thumbnails/leonardo.png) | U202415820 | **Cabrera Novoa, Leonardo Moisés** | Ingeniería de Software | Estudiante de 5to ciclo con experiencia en C++ y recientemente en C#. Se enfoca en el desarrollo colaborativo, aportando compromiso y adaptabilidad para lograr los objetivos de cada sprint. |
| ![Frezzia](/report/assets/chapter-01/team/thumbnails/frezzia.jpg) | U200815121 | **Espinoza Paredes, Frezzia** | Ingeniería de Software | Estudiante de Ingeniería de Software de la Universidad Peruana de Ciencias Aplicadas (UPC). Tiene habilidades en prototipado, user experience, HTML, CSS, JavaScript, Python y C++. |
| Pendiente | U20231B504 | **Morales Venegas, David Joel** | Ingeniería de Software | Estudiante de Ingeniería de Software con formación intermedia en desarrollo de aplicaciones web. Se adapta al trabajo técnico del equipo, priorizando código funcional, entendible y alineado a los requerimientos del proyecto. |
| ![Mauricio](/report/assets/chapter-01/team/thumbnails/mauricio.png) | U202410093 | **Pajés León, Mauricio Luis** | Ingeniería de Software | Estudiante de Ingeniería de Software en la UPC, con experiencia en C++ y Python, diseño y patrones de software, bases de datos SQL y NoSQL, desarrollo backend con Java Spring Boot y Node.js, comunicación y trabajo en equipo. |
| ![Jorge](/report/assets/chapter-01/team/thumbnails/jorge.png) | U202220648 | **Videla Ventura, Jorge Joseph** | Ingeniería de Software | Estudiante de Ingeniería de Software en la UPC (4.º ciclo), con experiencia en C++ y Python. Responsable, comprometido y orientado al trabajo en equipo. |

## 1.2 Solution Profile

ICEQ aborda una problemática crítica del sector alimentario peruano: la pérdida de productos perecibles por fallas en la cadena de frío y la escasa trazabilidad de las condiciones de almacenamiento. Distintas fuentes señalan que en el Perú se pierden millones de toneladas de alimentos cada año y que una porción importante de estas mermas está vinculada a deficiencias en refrigeración, transporte y control operativo.

En ese contexto, **ColdTrace** se propone como una plataforma web de monitoreo inteligente que conecta sensores IoT instalados en puntos críticos de almacenamiento y traslado para entregar visibilidad continua, alertas oportunas, evidencia histórica de las condiciones de temperatura y humedad, planes de respuesta asistidos por IA y una administración comercial basada en suscripciones.

Con ColdTrace, los usuarios pueden:

- Registrar instalaciones, cámaras o unidades de transporte y configurar rangos seguros por tipo de producto.
- Supervisar en tiempo real la temperatura y humedad de sus activos refrigerados.
- Recibir alertas automáticas por correo electrónico o mensajería cuando exista una desviación relevante.
- Consultar históricos de medición para trazabilidad, control interno y auditorías.
- Generar reportes de incidencias que respalden la toma de decisiones y el cumplimiento normativo.
- Solicitar planes de resolución asistidos por IA para incidencias térmicas, siempre sujetos a revisión y aprobación del operador antes de cerrar el caso.
- Administrar planes de suscripción con límites de uso, funcionalidades disponibles y actualización a planes superiores cuando la operación lo requiera.

El modelo de negocio propuesto es de suscripción mensual escalonada. El plan **Base** permite adopción inicial sin costo para pequeños negocios; el plan **Operaciones** habilita mayor capacidad de monitoreo, reportes y mantenimiento; y el plan **Compliance AI** incorpora capacidades avanzadas como asistencia inteligente, resúmenes de cumplimiento y límites ampliados. Para los planes pagados se plantea integrar un proveedor externo de pagos, como Stripe en modo de prueba académico, evitando que ColdTrace almacene datos sensibles de tarjetas.

### 1.2.1 Antecedentes y problemática

**Antecedentes**

De acuerdo con la FAO (2021), en el Perú se desperdician más de 12 millones de toneladas de alimentos a lo largo de la cadena productiva. A ello se suma que, según Agraria.pe (2019), más del 33% de los alimentos producidos en el país se pierde por deficiencias en la cadena de frío. Aunque el mercado vinculado a almacenamiento refrigerado continúa creciendo, muchas organizaciones todavía dependen de controles manuales, registros dispersos o procesos reactivos que no ofrecen monitoreo continuo ni alertas tempranas.

Frente a esta realidad, ICEQ plantea ColdTrace como una plataforma que permita supervisar en tiempo real cámaras frigoríficas, almacenes y transporte refrigerado, reduciendo mermas, reforzando la inocuidad alimentaria y mejorando la capacidad de respuesta ante incidentes.

**Técnica "The 5W's y 2H's" aplicada al problema:**

| The 5W's y 2H's | Pregunta | Descripción |
|:----------------|:---------|:------------|
| **What** | ¿Cuál es el problema? | La falta de monitoreo continuo de temperatura y humedad en almacenes, cámaras frigoríficas y unidades de transporte ocasiona que los incidentes de refrigeración se detecten demasiado tarde, generando merma de productos, riesgos sanitarios y poca trazabilidad operativa. |
| **When** | ¿Cuándo sucede? | Se presenta de manera constante durante la operación diaria, con mayor impacto en temporadas de alta demanda, días de calor intenso o traslados prolongados de productos perecibles. El cliente utilizará ColdTrace de forma continua durante toda la jornada operativa. |
| **Where** | ¿Dónde ocurre? | El cliente puede estar en la oficina, en un almacén, en un centro de distribución o en tránsito. El problema surge en cámaras frigoríficas, almacenes, centros de distribución, cocinas industriales y unidades de transporte refrigerado. |
| **Who** | ¿Quiénes involucrados? | Jefes de calidad, administradores, operadores logísticos, encargados de almacén, transportistas de productos perecibles y responsables de cumplimiento sanitario. Indirectamente también afecta a los consumidores. |
| **Why** | ¿Por qué sucede? | La causa principal es la dependencia de controles manuales o sistemas aislados, junto con la ausencia de alertas tempranas y de una plataforma centralizada que permita seguimiento en tiempo real e historial de incidentes. |
| **How** | ¿Cómo afecta? | Provoca pérdidas por merma de productos perecibles, reprocesos operativos, riesgo de sanciones por incumplimiento y deterioro de la confianza en la operación logística y de almacenamiento. |
| **How Much** | ¿Cuánto impacta? | Pérdida de más de 12 millones de toneladas de alimentos (FAO, 2021) y más del 33% de los alimentos producidos perdidos por deficiencias en la cadena de frío (Agraria.pe, 2019). |

---

### 1.2.2 Lean UX Process

#### 1.2.2.1 Lean UX Problem Statements

En el sector alimentario peruano, muchas empresas aún supervisan la cadena de frío mediante registros manuales o herramientas desconectadas entre sí. Esto ocasiona que incidentes de temperatura y humedad sean detectados demasiado tarde, cuando la pérdida del producto o el riesgo sanitario ya es significativo. Aunque existe necesidad de control y trazabilidad, no todas las organizaciones cuentan con una plataforma sencilla, accesible y centralizada que reúna monitoreo en tiempo real, alertas, evidencia histórica, guía operativa ante incidencias y un modelo de contratación ajustado a su tamaño.

A partir de ello, la pregunta de negocio es la siguiente:

> **¿Cómo podemos ofrecer a las empresas del sector alimentario una plataforma web de monitoreo en tiempo real que reduzca pérdidas por fallas de refrigeración, fortalezca el control sanitario, guíe la resolución de incidencias y se adapte comercialmente a empresas de distintos tamaños?**

#### 1.2.2.2 Lean UX Assumptions

**Business Assumptions**

1. Existe una demanda real por herramientas digitales que permitan reducir mermas y mejorar el control de la cadena de frío.
2. Las empresas están dispuestas a pagar una suscripción si la solución demuestra ahorro operativo, trazabilidad y capacidad de reacción.
3. Es viable integrar la plataforma con dispositivos IoT y con procesos ya existentes en almacenes, transporte y puntos de control.
4. Los responsables de operación valorarán recomendaciones asistidas por IA si estas se presentan como apoyo a la decisión y no como cierre automático de incidencias.
5. Un modelo de planes escalonados reducirá la barrera de adopción para pequeños negocios y permitirá monetizar funcionalidades avanzadas en operaciones de mayor escala.

**Business Outcomes**

1. Generar ingresos recurrentes mediante un modelo SaaS escalonado según instalaciones, sensores o usuarios.
2. Posicionar a ColdTrace como una solución confiable para el monitoreo de cadena de frío en el mercado peruano.
3. Validar la propuesta de valor a través de una disminución medible de incidentes y pérdidas en clientes piloto.
4. Incrementar la conversión desde la landing page mediante una sección de planes y precios clara.
5. Aumentar la adopción de funcionalidades avanzadas mediante upgrades a planes de mayor capacidad.

**User Benefits**

1. Acceso a información en tiempo real desde cualquier dispositivo con navegador.
2. Respuesta más rápida frente a desvíos de temperatura o humedad gracias a alertas automáticas.
3. Mayor trazabilidad para auditorías, control interno y cumplimiento normativo.
4. Guía estructurada para resolver incidencias críticas con revisión humana y evidencia auditada.
5. Transparencia sobre límites, precios y funcionalidades disponibles según el plan contratado.

#### 1.2.2.3 Lean UX Hypothesis Statements

**Hypothesis 1:** Creemos que, si ColdTrace ofrece monitoreo en tiempo real mediante sensores IoT, al menos el 70% de los clientes piloto reportará una reducción visible en pérdidas por fallas de refrigeración durante sus primeros meses de uso.

**Hypothesis 2:** Creemos que, si la plataforma incorpora alertas automáticas y configurables, el tiempo de respuesta ante incidencias disminuirá de manera significativa frente a los controles manuales tradicionales.

**Hypothesis 3:** Creemos que, si el sistema genera históricos y reportes descargables, las empresas podrán sustentar mejor su trazabilidad y sus procesos de auditoría sanitaria.

**Hypothesis 4:** Creemos que, si el modelo de suscripción es accesible y escalable, la retención de clientes durante la etapa inicial será suficientemente alta como para validar la viabilidad comercial del producto.

**Hypothesis 5:** Creemos que, si ColdTrace ofrece planes claramente diferenciados entre Base, Operaciones y Compliance AI, los visitantes podrán identificar con mayor facilidad qué alternativa corresponde a su operación y aumentará la intención de registro.

**Hypothesis 6:** Creemos que, si el sistema propone planes de resolución asistidos por IA pero exige aprobación del operador antes de cerrar una incidencia, los responsables de calidad percibirán mayor valor sin perder control sobre sus decisiones operativas.

#### 1.2.2.4 Lean UX Canvas

| **Business problem** Las empresas del sector alimentario todavía dependen de controles manuales o herramientas desconectadas para vigilar la temperatura de cámaras frigoríficas, almacenes y unidades de transporte. Esto ocasiona que los incidentes de refrigeración sean detectados tarde, provocando pérdidas de producto, riesgos sanitarios y poca capacidad para sustentar trazabilidad frente a auditorías. Además, cuando ocurre una incidencia, los equipos no siempre tienen una guía clara para decidir qué acción correctiva aplicar y muchas pymes necesitan una forma de adopción gradual que no exija inversión inicial elevada. En el Perú, esta situación se relaciona con el mal manejo de la cadena de frío y con los altos niveles de desperdicio de alimentos reportados por la FAO (2021) y Agraria.pe (2019). | **Solution ideas** - Dashboard web centralizado con sensores IoT de temperatura y humedad - Alertas automáticas por correo y mensajería ante desviaciones del rango seguro - Historial descargable de condiciones de almacenamiento para control y auditorías - Reportes de incidencias para apoyar decisiones operativas y seguimiento - Planes asistidos por IA para resolución de incidencias con aprobación humana - Modelo SaaS con planes Base, Operaciones y Compliance AI, sin inversión inicial elevada en infraestructura | **Business Outcomes** - Ingresos recurrentes por una suscripción escalonada según sensores, activos, usuarios y funcionalidades. - Tasa de retención mensual alta durante los primeros meses de uso. - Posicionar a ColdTrace como una plataforma confiable para monitoreo de cadena de frío en Perú. - Reducir mermas en clientes piloto y convertir ese resultado en evidencia de valor. - Validar conversión desde plan gratuito hacia planes pagados por mayor capacidad y funcionalidades avanzadas. |
| --- | --- | --- |
| **Users and customers** - Jefes de calidad - Operadores logísticos - Gerentes de supermercados - Administradores de restaurantes - Transportistas de productos perecibles - Empresas del sector alimentario de distintos tamaños - Administradores de organización responsables de elegir y gestionar el plan de suscripción | **User benefits** - Visibilidad en tiempo real desde cualquier dispositivo con navegador - Respuesta más rápida ante fallas antes de que ocurran pérdidas mayores - Trazabilidad completa para auditorías de DIGESA y MINSA - Menor exposición a sanciones y daño reputacional por incumplimiento operativo - Recomendaciones estructuradas para resolver incidencias sin perder aprobación humana - Planes y precios claros según tamaño de operación |  |
| **Hypotheses** - Si ofrecemos monitoreo IoT en tiempo real, una parte importante de los clientes piloto reducirá pérdidas dentro de los primeros meses. - Si implementamos alertas automáticas, el tiempo de respuesta frente a incidentes bajará frente al control manual. - Si brindamos historial descargable y trazabilidad completa, las empresas podrán sustentar mejor sus auditorías. - Si el modelo SaaS es accesible y escalable, lograremos una retención mensual sólida en la etapa inicial. - Si agregamos asistencia inteligente con aprobación humana, aumentará la confianza del responsable de calidad en el cierre de incidencias. - Si la landing explica planes y límites, mejorará la intención de registro y upgrade. | **What's the most important thing we need to learn first?** ¿Los operadores del sector alimentario están realmente dispuestos a pagar por una solución SaaS de monitoreo, y cuánto valor le asignan a funciones avanzadas como asistencia inteligente, reportes ampliados y mayor capacidad de sensores? | **What's the least amount of work we need to do to learn the next most important thing?** Realizar entrevistas con responsables de calidad y logística, mostrar un prototipo de dashboard con panel de asistencia de IA y presentar una sección de planes y precios para validar disposición de pago, utilidad de alertas, límites aceptables y preferencia de upgrade. |

---

## 1.3 Segmentos Objetivos

En función de la problemática identificada y del tipo de solución que propone ColdTrace, se reconocen dos segmentos objetivo principales. El primero está compuesto por pequeños negocios alimentarios que necesitan controlar mejor su refrigeración diaria y podrían iniciar con un plan Base. El segundo está conformado por responsables de operaciones, calidad o logística dentro de negocios y empresas que manejan productos perecibles, requieren trazabilidad, monitoreo continuo, reacción oportuna ante incidentes y pueden adoptar planes superiores con reportes avanzados o asistencia inteligente.

| Segmento objetivo | Características demográficas | Información estadística de sustento |
|:------------------|:-----------------------------|:------------------------------------|
| **Minimarkets o puestos de mercado** | **Edad:** adultos de 25 años a más.
**Cargo:** dueños, administradores o encargados de minimarkets, carnicerías, pescaderías, verdulerías y otros comercios minoristas con productos perecibles y sistemas de refrigeración.
**Ubicación:** zonas urbanas o comerciales con alta rotación de productos frescos.
**Interés:** reducir merma, asegurar la inocuidad de los alimentos, evitar observaciones de DIGESA o MINSA y contar con una solución simple para monitorear refrigeración. | Según Agraria.pe (2019), en el Perú se pierde más del 33% de los alimentos producidos por deficiencias en la cadena de frío. Para pequeños comercios alimentarios, una falla de refrigeración puede traducirse en pérdida inmediata de mercadería y en menor rentabilidad del negocio. |
| **Responsables de operaciones y control de calidad** | **Edad:** adultos de 21 años a más.
**Cargo:** jefes de operaciones, responsables de calidad, supervisores logísticos, encargados de almacén e ingenieros industriales en empresas que manipulan productos refrigerados.
**Ubicación:** centros de distribución, almacenes, supermercados, cámaras frigoríficas y operadores logísticos en zonas urbanas.
**Interés:** centralizar el monitoreo de la cadena de frío, responder con rapidez ante incidencias, mejorar trazabilidad, facilitar auditorías y tomar decisiones operativas con base en datos históricos. | Según la FAO (2021), en el Perú se desperdician más de 12 millones de toneladas de alimentos a lo largo de la cadena productiva. Esto refuerza la necesidad de que las áreas de operaciones, calidad y logística cuenten con herramientas de monitoreo continuo para prevenir pérdidas y elevar el control sobre la cadena de frío. |

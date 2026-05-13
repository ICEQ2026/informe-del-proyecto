# Chapter III: Requirements Specification

## 3.1 User Stories
<table style="width: 100%; table-layout: fixed;">
  <colgroup>
    <col style="width: 14%;">
    <col style="width: 24%;">
    <col style="width: 62%;">
  </colgroup>
  <tr>
    <td><strong>Código</strong></td>
    <td><strong>Título</strong></td>
    <td><strong>Epic</strong></td>
  </tr>
  <tr>
    <td>EP001</td>
    <td>Landing page y captación de visitantes</td>
    <td>Como visitante de ColdTrace, <strong>Quiero</strong> recorrer la landing page y comprender la propuesta de valor del producto, <strong>Para</strong> evaluar si la solución es relevante para mi negocio antes de registrarme o contactarme.</td>
  </tr>
  <tr>
    <td>EP002</td>
    <td>Gestión de usuarios y acceso</td>
    <td>Como usuario o administrador de la plataforma, <strong>Quiero</strong> registrar cuentas, autenticar accesos y gestionar permisos dentro del sistema, <strong>Para</strong> asegurar que cada persona utilice ColdTrace de acuerdo con su rol y pueda ingresar de forma segura a la operación.</td>
  </tr>
  <tr>
    <td>EP003</td>
    <td>Gestión de equipos y sensores</td>
    <td>Como responsable de la operación, <strong>Quiero</strong> registrar cámaras frigoríficas, unidades de transporte, sensores y gateways dentro del sistema, <strong>Para</strong> mantener organizada la infraestructura de monitoreo y asociar correctamente cada activo con su ubicación y estado.</td>
  </tr>
  <tr>
    <td>EP004</td>
    <td>Monitoreo de temperatura y humedad</td>
    <td>Como usuario de la plataforma, <strong>Quiero</strong> visualizar en tiempo real la temperatura, humedad y estado de mis equipos o ambientes monitoreados, <strong>Para</strong> detectar variaciones oportunamente y reducir el riesgo de pérdida de productos perecibles.</td>
  </tr>
  <tr>
    <td>EP005</td>
    <td>Alertas e incidencias</td>
    <td>Como encargado de negocio o responsable de operaciones, <strong>Quiero</strong> recibir alertas automáticas y registrar incidencias cuando ocurra una desviación térmica o un evento crítico, <strong>Para</strong> actuar rápidamente y minimizar el impacto operativo o económico.</td>
  </tr>
  <tr>
    <td>EP006</td>
    <td>Reportes, historial de eventos y cumplimiento</td>
    <td>Como responsable de operaciones y control de calidad, <strong>Quiero</strong> consultar historiales de lecturas, alertas e incidencias, exportar reportes y reunir evidencia operativa, <strong>Para</strong> facilitar auditorías, demostrar cumplimiento y mejorar la toma de decisiones basadas en datos.</td>
  </tr>
  <tr>
    <td>EP007</td>
    <td>Configuración operativa y mantenimiento</td>
    <td>Como usuario administrativo de la plataforma, <strong>Quiero</strong> configurar rangos de seguridad, gestionar parámetros operativos y dar seguimiento a necesidades de mantenimiento, <strong>Para</strong> asegurar el funcionamiento continuo del sistema y adaptar ColdTrace al contexto real de cada operación.</td>
  </tr>
  <tr>
    <td>EP008</td>
    <td>RESTful API - Autenticación</td>
    <td>Como developer, <strong>Quiero</strong> contar con endpoints de autenticación y acceso, <strong>Para</strong> permitir que el frontend gestione el registro, inicio de sesión y validación de usuarios dentro de ColdTrace.</td>
  </tr>
  <tr>
    <td>EP009</td>
    <td>RESTful API - Equipos y sensores</td>
    <td>Como developer, <strong>Quiero</strong> exponer endpoints para registrar y administrar equipos monitoreados y sensores, <strong>Para</strong> permitir que el frontend configure la infraestructura de monitoreo de la operación.</td>
  </tr>
  <tr>
    <td>EP010</td>
    <td>RESTful API - Lecturas y monitoreo</td>
    <td>Como developer, <strong>Quiero</strong> disponer de endpoints para registrar y consultar lecturas de monitoreo, <strong>Para</strong> soportar la visualización histórica y el seguimiento térmico en la plataforma.</td>
  </tr>
  <tr>
    <td>EP011</td>
    <td>RESTful API - Alertas e incidencias</td>
    <td>Como developer, <strong>Quiero</strong> implementar endpoints para consultar alertas y gestionar incidencias, <strong>Para</strong> permitir que el frontend responda a eventos críticos dentro de la operación.</td>
  </tr>
  <tr>
    <td>EP012</td>
    <td>RESTful API - Reportes y cumplimiento</td>
    <td>Como developer, <strong>Quiero</strong> ofrecer endpoints para generar bitácoras y reportes de cumplimiento, <strong>Para</strong> facilitar la consulta, descarga y uso documental de la información operativa.</td>
  </tr>
</table>

Luego de definir las épicas principales del sistema, se desarrollan las historias de usuario correspondientes a cada una de ellas. A continuación, se presentan las user stories del proyecto, organizadas según las épicas definidas para ColdTrace.

<table style="width: 100%; table-layout: fixed;">
  <colgroup>
    <col style="width: 12%;">
    <col style="width: 18%;">
    <col style="width: 25%;">
    <col style="width: 33%;">
    <col style="width: 12%;">
  </colgroup>
  <tr>
    <td><strong>ID de Historia de Usuario</strong></td>
    <td><strong>Título de User Story</strong></td>
    <td><strong>Descripción</strong></td>
    <td><strong>Criterios de Aceptación con Escenarios</strong></td>
    <td><strong>ID de Épica</strong></td>
  </tr>
  <tr>
    <td>US001</td>
    <td>Ver propuesta de valor en la landing page</td>
    <td>
      <strong>Como</strong> visitante,<br>
      <strong>Quiero</strong> ver en la página principal qué problema resuelve ColdTrace y cómo lo soluciona,<br>
      <strong>Para</strong> evaluar si es relevante para mi negocio antes de registrarme.
    </td>
    <td>
      <strong>Escenario 1: Carga exitosa de la propuesta de valor.</strong><br>
      <strong>Given</strong> el visitante accede a la landing page de ColdTrace.<br>
      <strong>When</strong> la página carga correctamente.<br>
      <strong>Then</strong> el sistema muestra el problema, la solución y los beneficios clave del producto en la sección principal.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US002</td>
    <td>Ver sección de funcionalidades</td>
    <td>
      <strong>Como</strong> visitante,<br>
      <strong>Quiero</strong> ver una sección con las funcionalidades del producto,<br>
      <strong>Para</strong> entender qué incluye ColdTrace antes de tomar una decisión de registro o contacto.
    </td>
    <td>
      <strong>Escenario 1: Sección visible al hacer scroll.</strong><br>
      <strong>Given</strong> el visitante está en la landing page.<br>
      <strong>When</strong> hace scroll hacia la sección de funcionalidades.<br>
      <strong>Then</strong> el sistema muestra bloques con cada funcionalidad principal y su descripción breve.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US003</td>
    <td>Ver sección de plataforma y funcionamiento</td>
    <td>
      <strong>Como</strong> visitante,<br>
      <strong>Quiero</strong> ver cómo se presenta la plataforma y cómo funciona ColdTrace,<br>
      <strong>Para</strong> comprender de manera general cómo opera la solución antes de continuar.
    </td>
    <td>
      <strong>Escenario 1: Visualización de la sección del producto.</strong><br>
      <strong>Given</strong> el visitante navega por la landing page.<br>
      <strong>When</strong> llega a la sección de plataforma y funcionamiento.<br>
      <strong>Then</strong> el sistema muestra una explicación general del funcionamiento de ColdTrace y una vista representativa de la plataforma.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US004</td>
    <td>Acceder a la sección de contacto o registro</td>
    <td>
      <strong>Como</strong> visitante,<br>
      <strong>Quiero</strong> acceder fácilmente a la sección de contacto o registro desde la landing page,<br>
      <strong>Para</strong> continuar con el proceso de interés en la solución.
    </td>
    <td>
      <strong>Escenario 1: Acceso exitoso a la sección de contacto o registro.</strong><br>
      <strong>Given</strong> el visitante se encuentra navegando en la landing page.<br>
      <strong>When</strong> selecciona la opción de contacto, registro o llamada a la acción correspondiente.<br>
      <strong>Then</strong> el sistema lo dirige correctamente a la sección o flujo asociado.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US005</td>
    <td>Navegar con menú fijo</td>
    <td>
      <strong>Como</strong> visitante,<br>
      <strong>Quiero</strong> que el menú de navegación permanezca visible al hacer scroll,<br>
      <strong>Para</strong> poder acceder a cualquier sección de la landing en cualquier momento sin tener que volver al inicio.
    </td>
    <td>
      <strong>Escenario 1: Menú fijo durante el scroll.</strong><br>
      <strong>Given</strong> el visitante hace scroll hacia abajo en la landing page.<br>
      <strong>When</strong> el menú llega al borde superior de la pantalla.<br>
      <strong>Then</strong> el sistema mantiene el menú fijo y visible durante todo el desplazamiento de la página.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US006</td>
    <td>Ver landing page en dispositivo móvil</td>
    <td>
      <strong>Como</strong> visitante que accede desde un celular,<br>
      <strong>Quiero</strong> que la landing page se adapte correctamente a mi pantalla,<br>
      <strong>Para</strong> poder navegar y leer el contenido sin problemas.
    </td>
    <td>
      <strong>Escenario 1: Visualización correcta en móvil.</strong><br>
      <strong>Given</strong> el visitante accede a la landing page desde un dispositivo móvil.<br>
      <strong>When</strong> la página carga.<br>
      <strong>Then</strong> el sistema muestra el contenido adaptado a la resolución del dispositivo sin elementos cortados ni superpuestos.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US007</td>
    <td>Crear cuenta de usuario</td>
    <td>
      <strong>Como</strong> usuario nuevo de la plataforma,<br>
      <strong>Quiero</strong> registrar una cuenta asociada a una organización,<br>
      <strong>Para</strong> ingresar a ColdTrace como usuario fundador y comenzar a operar con permisos administrativos.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el usuario completa correctamente el formulario de registro con datos de organización y acceso.<br>
      <strong>When</strong> envía sus datos para crear la cuenta.<br>
      <strong>Then</strong> el sistema registra la organización, crea el usuario fundador con rol de super administrador y muestra una confirmación de creación exitosa.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario intenta registrarse con un correo ya existente.<br>
      <strong>When</strong> envía el formulario de registro.<br>
      <strong>Then</strong> el sistema muestra un mensaje indicando que el correo ya se encuentra registrado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario deja campos obligatorios vacíos, no acepta los términos o ingresa contraseñas que no coinciden.<br>
      <strong>When</strong> intenta completar el registro.<br>
      <strong>Then</strong> el sistema valida la información y solicita corregir los campos antes de continuar.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US008</td>
    <td>Representar verificación de cuenta por correo</td>
    <td>
      <strong>Como</strong> usuario registrado,<br>
      <strong>Quiero</strong> visualizar el estado de verificación de mi cuenta,<br>
      <strong>Para</strong> entender si mi acceso está habilitado sin depender de un envío real de correo durante la versión frontend del proyecto.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el usuario crea una cuenta en el alcance actual del frontend.<br>
      <strong>When</strong> el registro se completa correctamente.<br>
      <strong>Then</strong> la cuenta queda habilitada para iniciar sesión y el sistema trata la verificación como completada para efectos de la demostración.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario consulta un estado de verificación pendiente o expirado simulado.<br>
      <strong>When</strong> intenta continuar desde ese estado.<br>
      <strong>Then</strong> la plataforma muestra el mensaje correspondiente y evita prometer un envío real de correo.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> ocurre un error al consultar los datos locales de cuenta.<br>
      <strong>When</strong> el usuario intenta validar su estado.<br>
      <strong>Then</strong> el sistema informa que no pudo completar la verificación simulada.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US009</td>
    <td>Iniciar sesión</td>
    <td>
      <strong>Como</strong> usuario registrado,<br>
      <strong>Quiero</strong> iniciar sesión con mi correo y una contraseña de demostración,<br>
      <strong>Para</strong> acceder a la experiencia principal de ColdTrace con la organización y rol asociados a mi cuenta.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el usuario existe en los datos locales y usa credenciales válidas de demostración.<br>
      <strong>When</strong> ingresa su correo y contraseña y selecciona la opción de iniciar sesión.<br>
      <strong>Then</strong> el sistema carga su organización, rol y permisos y lo redirige al dashboard.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario ingresa una contraseña incorrecta o un correo no reconocido.<br>
      <strong>When</strong> intenta iniciar sesión.<br>
      <strong>Then</strong> el sistema rechaza el acceso y muestra un mensaje de credenciales inválidas.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el acceso del usuario ha sido revocado o simulado como bloqueado.<br>
      <strong>When</strong> intenta ingresar a la plataforma.<br>
      <strong>Then</strong> el sistema bloquea el acceso e informa que la cuenta no tiene permisos vigentes.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US010</td>
    <td>Recuperar contraseña</td>
    <td>
      <strong>Como</strong> usuario de la plataforma,<br>
      <strong>Quiero</strong> solicitar un flujo de recuperación de contraseña desde mi correo registrado,<br>
      <strong>Para</strong> validar la experiencia de restablecimiento sin requerir envío real de correos ni tokens backend.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el usuario recuerda un correo registrado en la plataforma.<br>
      <strong>When</strong> solicita el restablecimiento de contraseña.<br>
      <strong>Then</strong> el sistema confirma visualmente el envío simulado del enlace de recuperación.<br><br>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el usuario accede a la pantalla de nueva contraseña con un enlace válido simulado.<br>
      <strong>When</strong> registra una nueva contraseña válida y coincidente.<br>
      <strong>Then</strong> el sistema confirma el cambio dentro del flujo frontend.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario ingresa un correo no asociado a ninguna cuenta local.<br>
      <strong>When</strong> solicita recuperar la contraseña.<br>
      <strong>Then</strong> el sistema informa que no existe una cuenta vinculada a ese correo.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el enlace de recuperación ha expirado de forma simulada.<br>
      <strong>When</strong> el usuario intenta usarlo.<br>
      <strong>Then</strong> el sistema solicita generar un nuevo proceso de recuperación.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US011</td>
    <td>Asignar roles y permisos</td>
    <td>
      <strong>Como</strong> administrador de la organización,<br>
      <strong>Quiero</strong> gestionar usuarios, roles y permisos dentro de la organización activa,<br>
      <strong>Para</strong> controlar qué acciones puede realizar cada persona dentro de ColdTrace según su responsabilidad operativa.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el administrador visualiza la lista de usuarios registrados de su organización.<br>
      <strong>When</strong> crea un usuario interno o asigna un rol válido a un usuario existente.<br>
      <strong>Then</strong> el sistema actualiza sus permisos y habilita el acceso correspondiente dentro de la organización activa.<br><br>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> un rol operativo tiene permisos configurables.<br>
      <strong>When</strong> el administrador ajusta su matriz de permisos.<br>
      <strong>Then</strong> el sistema refleja los cambios en la interfaz sin afectar el rol fundador de super administrador.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el administrador intenta asignar un rol no permitido, incompleto o duplicar un correo existente.<br>
      <strong>When</strong> guarda la configuración de acceso.<br>
      <strong>Then</strong> el sistema rechaza la operación y solicita corregir los datos.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> un usuario sin privilegios administrativos intenta modificar usuarios, roles o permisos.<br>
      <strong>When</strong> accede a esa funcionalidad.<br>
      <strong>Then</strong> el sistema muestra la información en modo de solo lectura o restringe la acción.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US012</td>
    <td>Registrar cámara frigorífica</td>
    <td>
      <strong>Como</strong> responsable de la operación,<br>
      <strong>Quiero</strong> registrar una cámara frigorífica en la plataforma con sus datos principales,<br>
      <strong>Para</strong> monitorear su funcionamiento y asociarla correctamente a la operación de la organización.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el usuario cuenta con permisos para gestionar activos.<br>
      <strong>When</strong> registra una cámara frigorífica con datos válidos como nombre, capacidad, ubicación y descripción.<br>
      <strong>Then</strong> el sistema guarda el activo y lo muestra dentro del inventario de equipos registrados.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario omite campos obligatorios o ingresa información inconsistente.<br>
      <strong>When</strong> intenta guardar la cámara frigorífica.<br>
      <strong>Then</strong> el sistema rechaza el registro y solicita completar o corregir los datos requeridos.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> ya existe un equipo registrado con el mismo identificador interno.<br>
      <strong>When</strong> el usuario intenta crear un nuevo registro duplicado.<br>
      <strong>Then</strong> el sistema informa que el activo ya existe y evita la duplicidad.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US013</td>
    <td>Registrar unidad de transporte</td>
    <td>
      <strong>Como</strong> responsable logístico,<br>
      <strong>Quiero</strong> registrar una unidad de transporte refrigerado dentro de ColdTrace,<br>
      <strong>Para</strong> monitorear sus condiciones térmicas y conservar un historial de mediciones e incidencias durante su operación.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el usuario tiene acceso al módulo de activos.<br>
      <strong>When</strong> registra una unidad de transporte con sus datos de identificación y operación.<br>
      <strong>Then</strong> el sistema crea el registro y lo deja disponible para asociar sensores y monitoreo.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la información de la unidad está incompleta o no cumple las validaciones mínimas.<br>
      <strong>When</strong> el usuario intenta guardar el registro.<br>
      <strong>Then</strong> el sistema muestra errores y no permite completar la operación.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario no tiene permisos para registrar activos logísticos.<br>
      <strong>When</strong> intenta crear la unidad de transporte.<br>
      <strong>Then</strong> el sistema restringe la acción y muestra un mensaje de acceso denegado.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US014</td>
    <td>Vincular sensor IoT a un activo</td>
    <td>
      <strong>Como</strong> responsable de la configuración del sistema,<br>
      <strong>Quiero</strong> vincular un sensor IoT a una cámara frigorífica o unidad de transporte,<br>
      <strong>Para</strong> comenzar a capturar datos de temperatura y humedad del activo correcto.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> existe un activo previamente registrado y un sensor disponible para configuración.<br>
      <strong>When</strong> el usuario selecciona ambos elementos y confirma la vinculación.<br>
      <strong>Then</strong> el sistema asocia el sensor al activo y habilita su uso para monitoreo.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el sensor ya se encuentra vinculado a otro activo.<br>
      <strong>When</strong> el usuario intenta asociarlo nuevamente.<br>
      <strong>Then</strong> el sistema informa el conflicto y no permite duplicar la vinculación.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el activo seleccionado no existe o fue desactivado.<br>
      <strong>When</strong> el usuario intenta completar la asociación.<br>
      <strong>Then</strong> el sistema impide la operación y solicita elegir un activo válido.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US015</td>
    <td>Emparejar gateway de red</td>
    <td>
      <strong>Como</strong> usuario administrativo de la plataforma,<br>
      <strong>Quiero</strong> emparejar un gateway de red con los sensores de mi operación,<br>
      <strong>Para</strong> asegurar la transmisión de datos desde los activos hacia el sistema.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el gateway se encuentra disponible y el sensor está listo para configuración.<br>
      <strong>When</strong> el usuario realiza el proceso de emparejamiento correctamente.<br>
      <strong>Then</strong> el sistema confirma la conexión entre gateway y sensor.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el gateway no responde o presenta fallas de conectividad.<br>
      <strong>When</strong> el usuario intenta completar el emparejamiento.<br>
      <strong>Then</strong> el sistema informa el error y deja el sensor sin conexión activa.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el gateway ya fue asignado a una configuración incompatible.<br>
      <strong>When</strong> el usuario intenta reutilizarlo sin realizar ajustes previos.<br>
      <strong>Then</strong> el sistema advierte la incompatibilidad y solicita revisar la configuración.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US016</td>
    <td>Verificar calibración del sensor</td>
    <td>
      <strong>Como</strong> responsable de calidad u operación,<br>
      <strong>Quiero</strong> verificar el estado de calibración de los sensores instalados,<br>
      <strong>Para</strong> asegurar que las lecturas registradas sean confiables y útiles para control y cumplimiento.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el sensor cuenta con información de calibración vigente.<br>
      <strong>When</strong> el usuario consulta el estado del sensor.<br>
      <strong>Then</strong> el sistema muestra que la calibración es válida y permite continuar con su uso normal.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el certificado de calibración está vencido.<br>
      <strong>When</strong> el usuario revisa el estado del sensor.<br>
      <strong>Then</strong> el sistema alerta que el sensor requiere mantenimiento o recalibración.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> no existe información registrada sobre la calibración del sensor.<br>
      <strong>When</strong> el usuario intenta validarlo dentro del sistema.<br>
      <strong>Then</strong> la plataforma indica que el estado del sensor no puede considerarse conforme.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US017</td>
    <td>Actualizar ubicación y estado del activo</td>
    <td>
      <strong>Como</strong> responsable de la operación,<br>
      <strong>Quiero</strong> actualizar la ubicación física y el estado operativo de un activo registrado,<br>
      <strong>Para</strong> mantener información precisa sobre su disponibilidad, condición y contexto de uso.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el activo ya se encuentra registrado en la plataforma.<br>
      <strong>When</strong> el usuario modifica su ubicación o cambia su estado operativo a activo, inactivo o en mantenimiento.<br>
      <strong>Then</strong> el sistema guarda la actualización y refleja el cambio en el inventario de activos.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario intenta asignar una ubicación inexistente o inválida.<br>
      <strong>When</strong> guarda la modificación del activo.<br>
      <strong>Then</strong> el sistema rechaza la operación y solicita una ubicación válida.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el activo tiene una incidencia abierta que restringe su cambio de estado.<br>
      <strong>When</strong> el usuario intenta modificarlo manualmente.<br>
      <strong>Then</strong> el sistema advierte la restricción y evita una actualización inconsistente.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US018</td>
    <td>Visualizar temperatura en tiempo real</td>
    <td>
      <strong>Como</strong> usuario de la plataforma,<br>
      <strong>Quiero</strong> visualizar en tiempo real la temperatura de mis equipos o ambientes monitoreados,<br>
      <strong>Para</strong> detectar rápidamente cualquier variación que pueda comprometer la conservación de los productos.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el activo cuenta con un sensor correctamente vinculado y con transmisión activa.<br>
      <strong>When</strong> el usuario accede al panel de monitoreo.<br>
      <strong>Then</strong> el sistema muestra la temperatura actual del activo en tiempo real.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> no existe una lectura reciente disponible para el activo seleccionado.<br>
      <strong>When</strong> el usuario intenta visualizar la temperatura.<br>
      <strong>Then</strong> el sistema informa que no hay datos actualizados en ese momento.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el activo no tiene sensores configurados.<br>
      <strong>When</strong> el usuario accede al monitoreo del equipo.<br>
      <strong>Then</strong> la plataforma indica que el activo aún no puede ser monitoreado.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US019</td>
    <td>Visualizar humedad en tiempo real</td>
    <td>
      <strong>Como</strong> usuario de la plataforma,<br>
      <strong>Quiero</strong> visualizar en tiempo real los valores de humedad de mis ambientes o equipos monitoreados,<br>
      <strong>Para</strong> complementar el control de conservación y evaluar mejor las condiciones del activo.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el sensor del activo transmite datos de humedad de forma correcta.<br>
      <strong>When</strong> el usuario consulta el detalle del monitoreo.<br>
      <strong>Then</strong> el sistema presenta el valor actual de humedad junto con el resto de variables monitoreadas.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el sensor no soporta medición de humedad.<br>
      <strong>When</strong> el usuario intenta consultar dicha variable.<br>
      <strong>Then</strong> el sistema informa que esa lectura no se encuentra disponible.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la lectura de humedad no pudo ser capturada correctamente.<br>
      <strong>When</strong> el usuario revisa el panel de monitoreo.<br>
      <strong>Then</strong> el sistema muestra el estado de dato no disponible o inconsistente.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US020</td>
    <td>Consultar historial de lecturas</td>
    <td>
      <strong>Como</strong> encargado de negocio o responsable de operaciones,<br>
      <strong>Quiero</strong> consultar el historial de lecturas de temperatura y humedad de un activo,<br>
      <strong>Para</strong> revisar su comportamiento en el tiempo y analizar incidencias pasadas.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el activo tiene lecturas almacenadas en el sistema.<br>
      <strong>When</strong> el usuario selecciona un rango de fechas para la consulta.<br>
      <strong>Then</strong> el sistema muestra el historial registrado dentro del periodo solicitado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el activo no tiene información histórica disponible en el rango consultado.<br>
      <strong>When</strong> el usuario ejecuta la búsqueda.<br>
      <strong>Then</strong> el sistema informa que no existen registros para ese periodo.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario ingresa un rango de fechas inválido.<br>
      <strong>When</strong> intenta consultar el historial.<br>
      <strong>Then</strong> la plataforma solicita corregir los criterios de búsqueda antes de procesar la consulta.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US021</td>
    <td>Detectar temperatura fuera de rango</td>
    <td>
      <strong>Como</strong> usuario de la plataforma,<br>
      <strong>Quiero</strong> que el sistema identifique automáticamente cuando la temperatura de un activo salga del rango seguro,<br>
      <strong>Para</strong> reconocer oportunamente una condición de riesgo dentro de la operación.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el activo tiene configurado un rango válido de temperatura.<br>
      <strong>When</strong> el sistema recibe una lectura que supera los límites establecidos.<br>
      <strong>Then</strong> la plataforma marca la condición como fuera de rango.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el activo no tiene un rango configurado previamente.<br>
      <strong>When</strong> se recibe una nueva lectura de temperatura.<br>
      <strong>Then</strong> el sistema no puede evaluar el cumplimiento y advierte que falta configuración.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la lectura recibida presenta valores corruptos o inconsistentes.<br>
      <strong>When</strong> el sistema intenta procesarla.<br>
      <strong>Then</strong> la lectura es descartada y queda registrada como inválida.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US022</td>
    <td>Visualizar estado de conectividad</td>
    <td>
      <strong>Como</strong> responsable de monitoreo,<br>
      <strong>Quiero</strong> visualizar el estado de conectividad de los sensores y gateways,<br>
      <strong>Para</strong> identificar si un activo está enviando información de forma continua o si existe un problema de transmisión.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el sensor y el gateway mantienen transmisión normal de datos.<br>
      <strong>When</strong> el usuario revisa el estado del activo dentro del sistema.<br>
      <strong>Then</strong> la plataforma muestra que la conectividad se encuentra activa y estable.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la conexión entre el sensor, gateway o red se ha interrumpido.<br>
      <strong>When</strong> el usuario accede al monitoreo del activo.<br>
      <strong>Then</strong> el sistema indica que la conectividad está perdida o inestable.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> no existe información suficiente para determinar el estado de conexión.<br>
      <strong>When</strong> el usuario consulta el panel.<br>
      <strong>Then</strong> la plataforma muestra el estado como desconocido o pendiente de actualización.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US023</td>
    <td>Sincronizar datos almacenados offline</td>
    <td>
      <strong>Como</strong> usuario de la plataforma,<br>
      <strong>Quiero</strong> que los datos capturados durante una pérdida de conexión se sincronicen cuando el sistema recupere conectividad,<br>
      <strong>Para</strong> conservar el historial completo de las lecturas registradas durante ese periodo.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> hubo una interrupción de red y el dispositivo almacenó lecturas de forma local.<br>
      <strong>When</strong> la conectividad se restablece.<br>
      <strong>Then</strong> el sistema sincroniza los datos pendientes con la plataforma central.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la conexión vuelve de forma intermitente o inestable.<br>
      <strong>When</strong> se intenta sincronizar la información acumulada.<br>
      <strong>Then</strong> el sistema conserva los datos pendientes y reintenta la sincronización posteriormente.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> parte de los datos offline presenta errores de integridad.<br>
      <strong>When</strong> el sistema procesa la sincronización.<br>
      <strong>Then</strong> la plataforma registra los paquetes inválidos y sincroniza únicamente la información válida.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US024</td>
    <td>Crear incidencia térmica</td>
    <td>
      <strong>Como</strong> usuario de la plataforma,<br>
      <strong>Quiero</strong> que el sistema cree una incidencia térmica cuando detecte una condición crítica en un activo,<br>
      <strong>Para</strong> iniciar el seguimiento formal del evento y evitar que el problema pase desapercibido.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el sistema detecta una lectura fuera del rango seguro configurado.<br>
      <strong>When</strong> la condición supera los criterios establecidos para riesgo operativo.<br>
      <strong>Then</strong> la plataforma crea automáticamente una incidencia térmica asociada al activo afectado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el activo no tiene configuración suficiente para evaluar la condición detectada.<br>
      <strong>When</strong> el sistema intenta crear la incidencia.<br>
      <strong>Then</strong> la plataforma registra el evento como inconsistente y advierte que falta configuración.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> ya existe una incidencia abierta por la misma condición y el mismo activo.<br>
      <strong>When</strong> se procesa una nueva lectura equivalente.<br>
      <strong>Then</strong> el sistema evita crear una duplicidad y actualiza la incidencia ya existente.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US025</td>
    <td>Disparar notificaciones de alerta</td>
    <td>
      <strong>Como</strong> encargado de negocio o responsable de operaciones,<br>
      <strong>Quiero</strong> recibir notificaciones automáticas cuando ocurra una incidencia crítica,<br>
      <strong>Para</strong> reaccionar de manera oportuna antes de que el problema afecte los productos o la operación.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> existe una incidencia térmica activa clasificada como crítica.<br>
      <strong>When</strong> el sistema procesa las reglas de notificación configuradas.<br>
      <strong>Then</strong> la plataforma envía alertas al usuario por los canales definidos, como push, correo o SMS.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> uno de los canales de notificación no está disponible o falla.<br>
      <strong>When</strong> el sistema intenta despachar la alerta.<br>
      <strong>Then</strong> la plataforma registra el fallo e intenta continuar con los demás canales disponibles.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario no tiene configurados canales de contacto válidos.<br>
      <strong>When</strong> se dispara una alerta crítica.<br>
      <strong>Then</strong> el sistema informa que la notificación no pudo completarse correctamente.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US026</td>
    <td>Escalar alerta no atendida</td>
    <td>
      <strong>Como</strong> responsable de la operación,<br>
      <strong>Quiero</strong> que el sistema escale una alerta que no ha sido atendida en el tiempo esperado,<br>
      <strong>Para</strong> asegurar que el incidente reciba seguimiento y no quede sin respuesta.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> una alerta crítica permanece sin reconocimiento dentro del tiempo de espera configurado.<br>
      <strong>When</strong> se cumple el umbral de escalamiento.<br>
      <strong>Then</strong> el sistema escala la alerta hacia un nivel superior de atención o hacia más responsables.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la alerta ya fue reconocida antes de que venza el tiempo definido.<br>
      <strong>When</strong> el sistema evalúa la necesidad de escalamiento.<br>
      <strong>Then</strong> la plataforma no ejecuta la escalada.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> no existe una política de escalamiento configurada para ese tipo de alerta.<br>
      <strong>When</strong> el sistema intenta aplicar la regla.<br>
      <strong>Then</strong> la plataforma registra la ausencia de configuración y mantiene el incidente en seguimiento.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US027</td>
    <td>Reconocer alerta crítica</td>
    <td>
      <strong>Como</strong> usuario responsable del monitoreo,<br>
      <strong>Quiero</strong> reconocer una alerta crítica dentro de la plataforma,<br>
      <strong>Para</strong> dejar constancia de que el incidente está siendo atendido por una persona responsable.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> existe una alerta activa asociada a una incidencia térmica.<br>
      <strong>When</strong> el usuario la revisa y marca la alerta como reconocida.<br>
      <strong>Then</strong> el sistema actualiza su estado y registra quién asumió la atención del caso.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la alerta ya fue reconocida por otro usuario.<br>
      <strong>When</strong> un segundo usuario intenta reconocerla nuevamente.<br>
      <strong>Then</strong> la plataforma muestra que la atención ya fue asumida y evita ambigüedad operativa.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario no tiene permisos para gestionar incidencias.<br>
      <strong>When</strong> intenta reconocer la alerta.<br>
      <strong>Then</strong> el sistema rechaza la acción e informa acceso denegado.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US028</td>
    <td>Registrar acción correctiva y cerrar incidencia</td>
    <td>
      <strong>Como</strong> usuario responsable de la atención de incidencias,<br>
      <strong>Quiero</strong> registrar la acción correctiva aplicada y cerrar la incidencia cuando la condición se estabilice,<br>
      <strong>Para</strong> dejar registro de la medida aplicada, confirmar que el riesgo fue resuelto y conservar el historial del caso.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> existe una incidencia abierta y el usuario ya tomó una medida correctiva sobre el activo afectado.<br>
      <strong>When</strong> registra la acción ejecutada y el sistema confirma la estabilización de la temperatura.<br>
      <strong>Then</strong> la incidencia se cierra satisfactoriamente y queda almacenada en el historial.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario intenta cerrar la incidencia sin registrar la acción tomada.<br>
      <strong>When</strong> confirma el cierre del caso.<br>
      <strong>Then</strong> la plataforma solicita completar la evidencia mínima antes de finalizar la incidencia.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la temperatura aún no ha regresado a un rango estable.<br>
      <strong>When</strong> el usuario intenta cerrar la incidencia manualmente.<br>
      <strong>Then</strong> el sistema advierte que el evento sigue activo y evita un cierre inconsistente.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US029</td>
    <td>Generar bitácora diaria</td>
    <td>
      <strong>Como</strong> responsable de operaciones o calidad,<br>
      <strong>Quiero</strong> generar una bitácora diaria por fecha y activo monitoreado,<br>
      <strong>Para</strong> contar con evidencia ordenada del control térmico realizado en la operación y detectar lecturas incompletas.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> existen lecturas registradas para la organización durante el día seleccionado.<br>
      <strong>When</strong> el usuario filtra por fecha y, opcionalmente, por activo y solicita la generación de la bitácora diaria.<br>
      <strong>Then</strong> el sistema consolida lecturas, promedios, desviaciones, cumplimiento y estado de completitud por activo.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> no existen datos suficientes para el día consultado.<br>
      <strong>When</strong> el usuario intenta generar la bitácora.<br>
      <strong>Then</strong> la plataforma informa que no es posible completar el registro diario por ausencia de datos.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> algunos activos tienen menos lecturas que las esperadas según su frecuencia operativa.<br>
      <strong>When</strong> se ejecuta la generación de la bitácora.<br>
      <strong>Then</strong> el sistema marca los activos incompletos, muestra lecturas faltantes y conserva la observación en el resumen.
    </td>
    <td>EP006</td>
  </tr>
  <tr>
    <td>US030</td>
    <td>Consultar historial de eventos operativos</td>
    <td>
      <strong>Como</strong> responsable de operaciones y control de calidad,<br>
      <strong>Quiero</strong> consultar el historial de lecturas, alertas e incidencias por activo, periodo y tipo de evento,<br>
      <strong>Para</strong> reconstruir eventos pasados y verificar cómo evolucionó una situación dentro del sistema.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el sistema dispone de lecturas, alertas e incidencias asociadas al activo consultado.<br>
      <strong>When</strong> el usuario filtra por periodo, activo y tipo de evento.<br>
      <strong>Then</strong> la plataforma muestra una línea histórica ordenada con totales, severidad y detalle de cada evento.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> no existen eventos registrados para el criterio solicitado.<br>
      <strong>When</strong> el usuario intenta consultar el historial.<br>
      <strong>Then</strong> el sistema indica que no hay información disponible para ese caso.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario no tiene permisos suficientes para acceder a esa información histórica.<br>
      <strong>When</strong> intenta visualizar el historial.<br>
      <strong>Then</strong> la plataforma restringe el acceso y muestra un mensaje de autorización insuficiente.
    </td>
    <td>EP006</td>
  </tr>
  <tr>
    <td>US031</td>
    <td>Exportar reporte de cumplimiento sanitario</td>
    <td>
      <strong>Como</strong> responsable de calidad,<br>
      <strong>Quiero</strong> exportar un reporte de cumplimiento sanitario filtrado por periodo y activo,<br>
      <strong>Para</strong> utilizar evidencia descargable de monitoreo y control en procesos internos o auditorías vinculadas al control sanitario.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el usuario selecciona un periodo y un activo con información suficiente para reportar.<br>
      <strong>When</strong> solicita la exportación del reporte de cumplimiento sanitario.<br>
      <strong>Then</strong> el sistema genera un archivo CSV con nombre basado en la organización, el periodo y el activo cuando corresponda.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el rango seleccionado no contiene información mínima para construir el reporte.<br>
      <strong>When</strong> el usuario intenta exportarlo.<br>
      <strong>Then</strong> la plataforma informa que no es posible generar el reporte solicitado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario intenta exportar el reporte sin permisos de consulta o descarga.<br>
      <strong>When</strong> ejecuta la acción.<br>
      <strong>Then</strong> el sistema bloquea la operación y notifica la restricción de acceso.
    </td>
    <td>EP006</td>
  </tr>
  <tr>
    <td>US032</td>
    <td>Descargar reporte mensual</td>
    <td>
      <strong>Como</strong> usuario administrativo de la plataforma,<br>
      <strong>Quiero</strong> descargar reportes mensuales consolidados y acceder rápidamente al reporte del mes actual,<br>
      <strong>Para</strong> evaluar el desempeño de la operación y tomar decisiones basadas en datos históricos.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> existe información consolidada del mes seleccionado.<br>
      <strong>When</strong> el usuario solicita la descarga desde la vista mensual o desde el acceso directo del dashboard.<br>
      <strong>Then</strong> el sistema genera un archivo CSV con nombre basado en la organización y el mes consultado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el periodo solicitado aún no cuenta con información consolidada suficiente.<br>
      <strong>When</strong> el usuario intenta descargar el reporte.<br>
      <strong>Then</strong> la plataforma informa que el documento todavía no puede ser generado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> ocurre un error durante el proceso de exportación del archivo.<br>
      <strong>When</strong> el sistema intenta construir el reporte.<br>
      <strong>Then</strong> la plataforma informa el fallo y solicita intentar nuevamente.
    </td>
    <td>EP006</td>
  </tr>
  <tr>
    <td>US033</td>
    <td>Detectar faltantes o incumplimientos</td>
    <td>
      <strong>Como</strong> responsable de calidad y cumplimiento,<br>
      <strong>Quiero</strong> identificar registros faltantes, observaciones y posibles incumplimientos por activo y periodo,<br>
      <strong>Para</strong> corregirlos oportunamente antes de una revisión o auditoría formal.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el sistema evalúa los registros de monitoreo frente a las reglas de control definidas.<br>
      <strong>When</strong> detecta faltantes de temperatura, vacíos en la bitácora, incidencias abiertas o inconsistencias documentales.<br>
      <strong>Then</strong> la plataforma marca la situación como observación o incumplimiento potencial y permite filtrarla por estado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la información del periodo es incompleta y no puede evaluarse con certeza.<br>
      <strong>When</strong> el sistema intenta verificar el cumplimiento.<br>
      <strong>Then</strong> la plataforma registra la limitación e informa que el análisis no pudo completarse totalmente.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario intenta cerrar la observación sin permisos apropiados.<br>
      <strong>When</strong> realiza la acción sobre el hallazgo.<br>
      <strong>Then</strong> el sistema restringe la modificación y conserva la evidencia registrada.
    </td>
    <td>EP006</td>
  </tr>
  <tr>
    <td>US034</td>
    <td>Preparar evidencia para auditoría</td>
    <td>
      <strong>Como</strong> responsable de auditoría interna o control de calidad,<br>
      <strong>Quiero</strong> reunir y exportar evidencia documental de monitoreo, reportes, hallazgos e incidencias,<br>
      <strong>Para</strong> sustentar el cumplimiento de la operación ante revisiones internas o externas.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> existen registros históricos, incidencias, hallazgos y reportes generados en el sistema.<br>
      <strong>When</strong> el usuario filtra por periodo y activo y solicita preparar la evidencia para auditoría.<br>
      <strong>Then</strong> la plataforma consolida un checklist de completitud y permite exportar la evidencia disponible en CSV.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> faltan documentos clave o registros obligatorios para el periodo evaluado.<br>
      <strong>When</strong> el usuario intenta preparar la evidencia.<br>
      <strong>Then</strong> el sistema advierte qué elementos faltan y señala que la evidencia está incompleta.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario selecciona un criterio de auditoría fuera del alcance de sus permisos.<br>
      <strong>When</strong> intenta consolidar la evidencia.<br>
      <strong>Then</strong> la plataforma restringe la operación y conserva la seguridad de acceso.
    </td>
    <td>EP006</td>
  </tr>
  <tr>
    <td>US035</td>
    <td>Configurar rangos de seguridad</td>
    <td>
      <strong>Como</strong> usuario administrativo de la plataforma,<br>
      <strong>Quiero</strong> configurar rangos seguros de temperatura y humedad por defecto o por activo monitoreado,<br>
      <strong>Para</strong> adaptar la evaluación del monitoreo a las condiciones reales de conservación que requiere la operación.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> la organización cuenta con activos registrados y datos de monitoreo.<br>
      <strong>When</strong> el usuario define límites válidos de temperatura y humedad para el alcance seleccionado y guarda la configuración.<br>
      <strong>Then</strong> el sistema registra el perfil de seguridad y lo utiliza como referencia para evaluar futuras lecturas y reportes.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario ingresa valores inconsistentes, como temperatura mínima mayor que la máxima o humedad fuera del rango permitido.<br>
      <strong>When</strong> intenta guardar la configuración.<br>
      <strong>Then</strong> la plataforma rechaza los datos y solicita corregir los parámetros ingresados.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario no tiene permisos de configuración sobre los activos.<br>
      <strong>When</strong> intenta modificar los rangos definidos.<br>
      <strong>Then</strong> el sistema bloquea la acción y muestra un mensaje de acceso restringido.
    </td>
    <td>EP007</td>
  </tr>
  <tr>
    <td>US036</td>
    <td>Actualizar parámetros operativos</td>
    <td>
      <strong>Como</strong> responsable de la operación,<br>
      <strong>Quiero</strong> actualizar la frecuencia de lectura y los criterios de evaluación de un dispositivo asociado a un activo,<br>
      <strong>Para</strong> ajustar el comportamiento del monitoreo al contexto y nivel de criticidad de cada activo.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el activo dispone de un dispositivo IoT asociado y una configuración operativa activa.<br>
      <strong>When</strong> el usuario modifica la frecuencia de lectura y selecciona criterios compatibles de evaluación.<br>
      <strong>Then</strong> la plataforma actualiza la configuración y muestra el nuevo perfil operativo en la tabla de dispositivos configurados.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario define una frecuencia fuera del rango permitido o deja criterios obligatorios sin seleccionar.<br>
      <strong>When</strong> intenta guardar los cambios.<br>
      <strong>Then</strong> el sistema rechaza la actualización y solicita corregir los parámetros.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario selecciona criterios incompatibles con las capacidades del sensor o gateway.<br>
      <strong>When</strong> confirma la actualización.<br>
      <strong>Then</strong> la plataforma informa la incompatibilidad y mantiene los parámetros operativos anteriores.
    </td>
    <td>EP007</td>
  </tr>
  <tr>
    <td>US037</td>
    <td>Programar mantenimiento preventivo</td>
    <td>
      <strong>Como</strong> responsable de calidad u operación,<br>
      <strong>Quiero</strong> programar mantenimientos preventivos para activos o dispositivos IoT,<br>
      <strong>Para</strong> reducir el riesgo de fallas operativas y mantener la confiabilidad del monitoreo.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el activo o dispositivo requiere seguimiento periódico.<br>
      <strong>When</strong> el usuario registra una programación de mantenimiento preventivo con fecha futura y observaciones.<br>
      <strong>Then</strong> el sistema agenda la intervención, la muestra en la tabla de mantenimientos y marca el activo para seguimiento.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario intenta programar mantenimiento para un activo inexistente, inactivo o con fecha inválida.<br>
      <strong>When</strong> guarda la solicitud.<br>
      <strong>Then</strong> la plataforma rechaza la operación y solicita seleccionar datos válidos.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> ya existe un mantenimiento pendiente para el mismo activo o dispositivo en el mismo periodo.<br>
      <strong>When</strong> el usuario intenta registrar una nueva programación equivalente.<br>
      <strong>Then</strong> el sistema advierte la duplicidad y evita generar un seguimiento redundante.
    </td>
    <td>EP007</td>
  </tr>
  <tr>
    <td>US038</td>
    <td>Solicitar y cerrar servicio técnico</td>
    <td>
      <strong>Como</strong> usuario responsable del activo,<br>
      <strong>Quiero</strong> registrar solicitudes de servicio técnico y cerrar la atención con evidencia de intervención,<br>
      <strong>Para</strong> conservar el historial técnico y devolver el equipo a operación de forma controlada.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el activo presenta una falla o requiere atención técnica correctiva.<br>
      <strong>When</strong> el usuario registra una solicitud con prioridad y descripción, y posteriormente documenta intervención, resultado y prueba funcional exitosa.<br>
      <strong>Then</strong> el sistema crea el seguimiento del servicio y permite cerrar el caso correctamente.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el usuario intenta cerrar el servicio sin registrar intervención, resultado o evidencia mínima.<br>
      <strong>When</strong> confirma el cierre del caso.<br>
      <strong>Then</strong> la plataforma exige completar la información antes de finalizar el ticket.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> la prueba de funcionamiento posterior al mantenimiento resulta fallida.<br>
      <strong>When</strong> el usuario intenta cerrar la atención técnica.<br>
      <strong>Then</strong> el sistema mantiene el servicio abierto y marca el activo como pendiente de nueva revisión.
    </td>
    <td>EP007</td>
  </tr>
  <tr>
    <td>TS01</td>
    <td>Endpoint de registro de usuario</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint POST para registrar usuarios,<br>
      <strong>Para</strong> que el frontend pueda crear nuevas cuentas desde el formulario de registro.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud POST con datos válidos de usuario.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 201 y el objeto del usuario creado sin incluir la contraseña.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud POST con un correo ya existente.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 400 y un mensaje indicando que el correo ya está en uso.
    </td>
    <td>EP008</td>
  </tr>
  <tr>
    <td>TS02</td>
    <td>Endpoint de inicio de sesión</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint POST para autenticar usuarios,<br>
      <strong>Para</strong> que el frontend pueda iniciar sesión y recibir un token de acceso.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía credenciales válidas.<br>
      <strong>When</strong> el servidor las valida.<br>
      <strong>Then</strong> responde con status 200 y un token junto con los datos básicos del usuario.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía credenciales inválidas.<br>
      <strong>When</strong> el servidor las valida.<br>
      <strong>Then</strong> responde con status 401 y un mensaje indicando que las credenciales son incorrectas.
    </td>
    <td>EP008</td>
  </tr>
  <tr>
    <td>TS03</td>
    <td>Endpoint para registrar equipo monitoreado</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint POST para registrar equipos monitoreados,<br>
      <strong>Para</strong> que el frontend pueda crear cámaras frigoríficas o unidades de operación dentro del sistema.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud POST con nombre, tipo y ubicación válidos.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 201 y el objeto del equipo creado con su identificador generado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud POST sin algún campo obligatorio.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 400 y un mensaje indicando los campos requeridos.
    </td>
    <td>EP009</td>
  </tr>
  <tr>
    <td>TS04</td>
    <td>Endpoint para registrar y vincular sensores</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint POST para registrar sensores y asociarlos a un equipo monitoreado,<br>
      <strong>Para</strong> que el frontend pueda configurar dispositivos de monitoreo dentro de la operación.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud POST con datos válidos del sensor y un equipo existente.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 201 y confirma la asociación del sensor al equipo.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud con un equipo inexistente.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 404 y un mensaje indicando que el equipo no fue encontrado.
    </td>
    <td>EP009</td>
  </tr>
  <tr>
    <td>TS05</td>
    <td>Endpoint para registrar lecturas de sensor</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint POST para registrar lecturas de temperatura y humedad enviadas por los sensores,<br>
      <strong>Para</strong> que el sistema pueda almacenarlas y procesarlas para monitoreo y alertas.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud POST con sensor, temperatura y humedad válidos.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 201 y el objeto de la lectura creada con su timestamp.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud POST con un sensor inexistente.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 404 y un mensaje indicando que el sensor no fue encontrado.
    </td>
    <td>EP010</td>
  </tr>
  <tr>
    <td>TS06</td>
    <td>Endpoint para obtener historial de lecturas</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint GET para obtener el historial de lecturas por equipo y rango de fechas,<br>
      <strong>Para</strong> que el frontend pueda mostrar gráficos y datos históricos al usuario.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud GET con un equipo válido y fechas correctas.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 200 y un arreglo con las lecturas ordenadas por fecha.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud GET con parámetros de fecha inconsistentes.<br>
      <strong>When</strong> el servidor valida los parámetros.<br>
      <strong>Then</strong> responde con status 400 y un mensaje indicando el error en la consulta.
    </td>
    <td>EP010</td>
  </tr>
  <tr>
    <td>TS07</td>
    <td>Endpoint para obtener alertas activas</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint GET para obtener las alertas activas de una organización,<br>
      <strong>Para</strong> que el frontend pueda mostrarlas dentro del panel de monitoreo.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud GET con una organización válida.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 200 y un arreglo con las alertas activas registradas.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud GET para una organización sin alertas activas.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 200 y un arreglo vacío.
    </td>
    <td>EP011</td>
  </tr>
  <tr>
    <td>TS08</td>
    <td>Endpoint para reconocer y cerrar incidencias</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint PUT para actualizar el estado de una incidencia y registrar su atención,<br>
      <strong>Para</strong> que el frontend pueda reconocer alertas, documentar acciones correctivas y cerrar casos.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud PUT con un identificador de incidencia válido y un estado permitido.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 200 y la incidencia actualizada con su nuevo estado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud PUT con una incidencia inexistente.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 404 y un mensaje indicando que la incidencia no fue encontrada.
    </td>
    <td>EP011</td>
  </tr>
  <tr>
    <td>TS09</td>
    <td>Endpoint para generar bitácora diaria</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint GET para generar la bitácora diaria de monitoreo,<br>
      <strong>Para</strong> que el frontend pueda consultar y descargar el consolidado operativo del día.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud GET con una fecha válida y datos disponibles.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 200 y la bitácora generada para el periodo consultado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud para un periodo sin información consolidada.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 404 o 400 indicando que no se pudo generar la bitácora.
    </td>
    <td>EP012</td>
  </tr>
  <tr>
    <td>TS10</td>
    <td>Endpoint para exportar reporte de cumplimiento sanitario</td>
    <td>
      <strong>Como</strong> developer,<br>
      <strong>Quiero</strong> un endpoint GET para exportar reportes de cumplimiento sanitario,<br>
      <strong>Para</strong> que el frontend pueda solicitar evidencia documental lista para descarga o auditoría.
    </td>
    <td>
      <strong>Happy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud GET con un periodo y criterios válidos.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 200 y el archivo o recurso del reporte generado.<br><br>
      <strong>Unhappy Path:</strong><br>
      <strong>Given</strong> el developer envía una solicitud con parámetros inválidos o sin información suficiente.<br>
      <strong>When</strong> el servidor procesa la solicitud.<br>
      <strong>Then</strong> responde con status 400 o 404 indicando que no fue posible exportar el reporte.
    </td>
    <td>EP012</td>
  </tr>
</table>

## 3.2 Impact Mapping

El Impact Mapping es una técnica de planificación estratégica que permite alinear el desarrollo de ColdTrace con los objetivos de negocio de ICEQ. Este análisis visual permite establecer un puente claro entre las metas de la startup y la entrega de valor real a los usuarios:

**Segmento 1: Dueños o encargados de pequeños negocios con productos perecibles**

   <img src="assets/chapter-03/impact maps/impact-map1.png" alt="Impact map del segmento de minimarkets o pequeños negocios con productos perecibles" width="900">

**Segmento 2: Responsables de operaciones, calidad o logística en negocios con cadena de frío**

   <img src="assets/chapter-03/impact maps/impact-map2.png" alt="Impact map del segmento de responsables de operaciones y control de calidad en negocios con cadena de frío" width="900">

## 3.3 Product Backlog

<table style="width: 100%; table-layout: fixed;">
  <colgroup>
    <col style="width: 8%;">
    <col style="width: 12%;">
    <col style="width: 20%;">
    <col style="width: 50%;">
    <col style="width: 10%;">
  </colgroup>
  <tr>
    <td><strong>#Order</strong></td>
    <td><strong>User Story Id</strong></td>
    <td><strong>Título</strong></td>
    <td><strong>Descripción</strong></td>
    <td><strong>Story Points</strong></td>
  </tr>
  <tr>
    <td>1</td>
    <td>US001</td>
    <td>Ver propuesta de valor en la landing page</td>
    <td><strong>Como</strong> visitante, <strong>deseo</strong> ver en la página principal qué problema resuelve ColdTrace y cómo lo soluciona <strong>para</strong> evaluar si es relevante para mi negocio antes de registrarme.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>2</td>
    <td>US002</td>
    <td>Ver sección de funcionalidades</td>
    <td><strong>Como</strong> visitante, <strong>deseo</strong> ver una sección con las funcionalidades del producto <strong>para</strong> entender qué incluye ColdTrace antes de tomar una decisión de registro o contacto.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>3</td>
    <td>US003</td>
    <td>Ver sección de plataforma y funcionamiento</td>
    <td><strong>Como</strong> visitante, <strong>deseo</strong> ver cómo se presenta la plataforma y cómo funciona ColdTrace <strong>para</strong> comprender de manera general cómo opera la solución antes de continuar.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>4</td>
    <td>US004</td>
    <td>Acceder a la sección de contacto o registro</td>
    <td><strong>Como</strong> visitante, <strong>deseo</strong> acceder fácilmente a la sección de contacto o registro desde la landing page <strong>para</strong> continuar con el proceso de interés en la solución.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>5</td>
    <td>US005</td>
    <td>Navegar con menú fijo</td>
    <td><strong>Como</strong> visitante, <strong>deseo</strong> que el menú de navegación permanezca visible al hacer scroll <strong>para</strong> poder acceder a cualquier sección de la landing en cualquier momento sin tener que volver al inicio.</td>
    <td>1</td>
  </tr>
  <tr>
    <td>6</td>
    <td>US006</td>
    <td>Ver landing page en dispositivo móvil</td>
    <td><strong>Como</strong> visitante que accede desde un celular, <strong>deseo</strong> que la landing page se adapte correctamente a mi pantalla <strong>para</strong> poder navegar y leer el contenido sin problemas.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>7</td>
    <td>US007</td>
    <td>Crear cuenta de usuario</td>
    <td><strong>Como</strong> usuario nuevo de la plataforma, <strong>deseo</strong> registrar una cuenta asociada a una organización <strong>para</strong> ingresar a ColdTrace como usuario fundador con permisos administrativos.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>8</td>
    <td>US008</td>
    <td>Representar verificación de cuenta por correo</td>
    <td><strong>Como</strong> usuario registrado, <strong>deseo</strong> visualizar el estado de verificación de mi cuenta <strong>para</strong> entender si mi acceso está habilitado sin depender de un envío real de correo durante la versión frontend.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>9</td>
    <td>US009</td>
    <td>Iniciar sesión</td>
    <td><strong>Como</strong> usuario registrado, <strong>deseo</strong> iniciar sesión con mi correo y una contraseña de demostración <strong>para</strong> acceder a la experiencia principal de ColdTrace con la organización y rol asociados a mi cuenta.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>10</td>
    <td>US010</td>
    <td>Recuperar contraseña</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> solicitar un flujo de recuperación desde mi correo registrado <strong>para</strong> validar la experiencia de restablecimiento sin envío real de correos ni tokens backend.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>11</td>
    <td>US011</td>
    <td>Asignar roles y permisos</td>
    <td><strong>Como</strong> administrador de la organización, <strong>deseo</strong> gestionar usuarios, roles y permisos dentro de la organización activa <strong>para</strong> controlar las acciones disponibles según la responsabilidad operativa de cada persona.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>12</td>
    <td>US012</td>
    <td>Registrar cámara frigorífica</td>
    <td><strong>Como</strong> responsable de la operación, <strong>deseo</strong> registrar una cámara frigorífica en la plataforma con sus datos principales <strong>para</strong> monitorear su funcionamiento y asociarla correctamente a la operación de la organización.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>13</td>
    <td>US014</td>
    <td>Vincular sensor IoT a un activo</td>
    <td><strong>Como</strong> responsable de la configuración del sistema, <strong>deseo</strong> vincular un sensor IoT a una cámara frigorífica o unidad de transporte <strong>para</strong> comenzar a capturar datos de temperatura y humedad del activo correcto.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>14</td>
    <td>US015</td>
    <td>Emparejar gateway de red</td>
    <td><strong>Como</strong> usuario administrativo de la plataforma, <strong>deseo</strong> emparejar un gateway de red con los sensores de mi operación <strong>para</strong> asegurar la transmisión de datos desde los activos hacia el sistema.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>15</td>
    <td>US035</td>
    <td>Configurar rangos de seguridad</td>
    <td><strong>Como</strong> usuario administrativo de la plataforma, <strong>deseo</strong> configurar rangos seguros de temperatura y humedad por defecto o por activo monitoreado <strong>para</strong> adaptar la evaluación del monitoreo a la operación.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>16</td>
    <td>US018</td>
    <td>Visualizar temperatura en tiempo real</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> visualizar en tiempo real la temperatura de mis equipos o ambientes monitoreados <strong>para</strong> detectar rápidamente cualquier variación que pueda comprometer la conservación de los productos.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>17</td>
    <td>US021</td>
    <td>Detectar temperatura fuera de rango</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> que el sistema identifique automáticamente cuando la temperatura de un activo salga del rango seguro <strong>para</strong> reconocer oportunamente una condición de riesgo dentro de la operación.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>18</td>
    <td>US024</td>
    <td>Crear incidencia térmica</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> que el sistema cree una incidencia térmica cuando detecte una condición crítica en un activo <strong>para</strong> iniciar el seguimiento formal del evento y evitar que el problema pase desapercibido.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>19</td>
    <td>US025</td>
    <td>Disparar notificaciones de alerta</td>
    <td><strong>Como</strong> encargado de negocio o responsable de operaciones, <strong>deseo</strong> recibir notificaciones automáticas cuando ocurra una incidencia crítica <strong>para</strong> reaccionar de manera oportuna antes de que el problema afecte los productos o la operación.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>20</td>
    <td>US027</td>
    <td>Reconocer alerta crítica</td>
    <td><strong>Como</strong> usuario responsable del monitoreo, <strong>deseo</strong> reconocer una alerta crítica dentro de la plataforma <strong>para</strong> dejar constancia de que el incidente está siendo atendido por una persona responsable.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>21</td>
    <td>US028</td>
    <td>Registrar acción correctiva y cerrar incidencia</td>
    <td><strong>Como</strong> usuario responsable de la atención de incidencias, <strong>deseo</strong> registrar la acción correctiva aplicada y cerrar la incidencia cuando la condición se estabilice <strong>para</strong> dejar registro de la medida aplicada, confirmar que el riesgo fue resuelto y conservar el historial del caso.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>22</td>
    <td>US020</td>
    <td>Consultar historial de lecturas</td>
    <td><strong>Como</strong> encargado de negocio o responsable de operaciones, <strong>deseo</strong> consultar el historial de lecturas de temperatura y humedad de un activo <strong>para</strong> revisar su comportamiento en el tiempo y analizar incidencias pasadas.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>23</td>
    <td>US030</td>
    <td>Consultar historial de eventos operativos</td>
    <td><strong>Como</strong> responsable de operaciones y control de calidad, <strong>deseo</strong> consultar el historial de lecturas, alertas e incidencias por activo, periodo y tipo de evento <strong>para</strong> reconstruir eventos pasados.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>24</td>
    <td>US029</td>
    <td>Generar bitácora diaria</td>
    <td><strong>Como</strong> responsable de operaciones o calidad, <strong>deseo</strong> generar una bitácora diaria por fecha y activo monitoreado <strong>para</strong> contar con evidencia ordenada del control térmico y detectar lecturas incompletas.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>25</td>
    <td>US031</td>
    <td>Exportar reporte de cumplimiento sanitario</td>
    <td><strong>Como</strong> responsable de calidad, <strong>deseo</strong> exportar un reporte de cumplimiento sanitario filtrado por periodo y activo <strong>para</strong> utilizar evidencia descargable en procesos internos o auditorías.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>26</td>
    <td>US034</td>
    <td>Preparar evidencia para auditoría</td>
    <td><strong>Como</strong> responsable de auditoría interna o control de calidad, <strong>deseo</strong> reunir y exportar evidencia documental de monitoreo, reportes, hallazgos e incidencias <strong>para</strong> sustentar el cumplimiento operativo.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>27</td>
    <td>US033</td>
    <td>Detectar faltantes o incumplimientos</td>
    <td><strong>Como</strong> responsable de calidad y cumplimiento, <strong>deseo</strong> identificar registros faltantes, observaciones y posibles incumplimientos por activo y periodo <strong>para</strong> corregirlos antes de una auditoría.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>28</td>
    <td>US017</td>
    <td>Actualizar ubicación y estado del activo</td>
    <td><strong>Como</strong> responsable de la operación, <strong>deseo</strong> actualizar la ubicación física y el estado operativo de un activo registrado <strong>para</strong> mantener información precisa sobre su disponibilidad, condición y contexto de uso.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>29</td>
    <td>US016</td>
    <td>Verificar calibración del sensor</td>
    <td><strong>Como</strong> responsable de calidad u operación, <strong>deseo</strong> verificar el estado de calibración de los sensores instalados <strong>para</strong> asegurar que las lecturas registradas sean confiables y útiles para control y cumplimiento.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>30</td>
    <td>US037</td>
    <td>Programar mantenimiento preventivo</td>
    <td><strong>Como</strong> responsable de calidad u operación, <strong>deseo</strong> programar mantenimientos preventivos para activos o dispositivos IoT <strong>para</strong> reducir fallas operativas y mantener la confiabilidad del monitoreo.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>31</td>
    <td>US038</td>
    <td>Solicitar y cerrar servicio técnico</td>
    <td><strong>Como</strong> usuario responsable del activo, <strong>deseo</strong> registrar solicitudes de servicio técnico y cerrar la atención con evidencia de intervención <strong>para</strong> conservar el historial técnico del activo.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>32</td>
    <td>US036</td>
    <td>Actualizar parámetros operativos</td>
    <td><strong>Como</strong> responsable de la operación, <strong>deseo</strong> actualizar la frecuencia de lectura y los criterios de evaluación de un dispositivo asociado a un activo <strong>para</strong> ajustar el monitoreo a su criticidad.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>33</td>
    <td>US019</td>
    <td>Visualizar humedad en tiempo real</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> visualizar en tiempo real los valores de humedad de mis ambientes o equipos monitoreados <strong>para</strong> complementar el control de conservación y evaluar mejor las condiciones del activo.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>34</td>
    <td>US022</td>
    <td>Visualizar estado de conectividad</td>
    <td><strong>Como</strong> responsable de monitoreo, <strong>deseo</strong> visualizar el estado de conectividad de los sensores y gateways <strong>para</strong> identificar si un activo está enviando información de forma continua o si existe un problema de transmisión.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>35</td>
    <td>US023</td>
    <td>Sincronizar datos almacenados offline</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> que los datos capturados durante una pérdida de conexión se sincronicen cuando el sistema recupere conectividad <strong>para</strong> conservar el historial completo de las lecturas registradas durante ese periodo.</td>
    <td>8</td>
  </tr>
  <tr>
    <td>36</td>
    <td>US026</td>
    <td>Escalar alerta no atendida</td>
    <td><strong>Como</strong> responsable de la operación, <strong>deseo</strong> que el sistema escale una alerta que no ha sido atendida en el tiempo esperado <strong>para</strong> asegurar que el incidente reciba seguimiento y no quede sin respuesta.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>37</td>
    <td>US032</td>
    <td>Descargar reporte mensual</td>
    <td><strong>Como</strong> usuario administrativo de la plataforma, <strong>deseo</strong> descargar reportes mensuales consolidados y acceder rápidamente al reporte del mes actual <strong>para</strong> evaluar el desempeño de la operación.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>38</td>
    <td>US013</td>
    <td>Registrar unidad de transporte</td>
    <td><strong>Como</strong> responsable logístico, <strong>deseo</strong> registrar una unidad de transporte refrigerado dentro de ColdTrace <strong>para</strong> monitorear sus condiciones térmicas y conservar un historial de mediciones e incidencias durante su operación.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>39</td>
    <td>TS01</td>
    <td>Endpoint de registro de usuario</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint POST para registrar usuarios <strong>para</strong> que el frontend pueda crear nuevas cuentas desde el formulario de registro.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>40</td>
    <td>TS02</td>
    <td>Endpoint de inicio de sesión</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint POST para autenticar usuarios <strong>para</strong> que el frontend pueda iniciar sesión y recibir un token de acceso.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>41</td>
    <td>TS03</td>
    <td>Endpoint para registrar equipo monitoreado</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint POST para registrar equipos monitoreados <strong>para</strong> que el frontend pueda crear cámaras frigoríficas o unidades de operación dentro del sistema.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>42</td>
    <td>TS04</td>
    <td>Endpoint para registrar y vincular sensores</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint POST para registrar sensores y asociarlos a un equipo monitoreado <strong>para</strong> que el frontend pueda configurar dispositivos de monitoreo dentro de la operación.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>43</td>
    <td>TS05</td>
    <td>Endpoint para registrar lecturas de sensor</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint POST para registrar lecturas de temperatura y humedad enviadas por los sensores <strong>para</strong> que el sistema pueda almacenarlas y procesarlas para monitoreo y alertas.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>44</td>
    <td>TS06</td>
    <td>Endpoint para obtener historial de lecturas</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint GET para obtener el historial de lecturas por equipo y rango de fechas <strong>para</strong> que el frontend pueda mostrar gráficos y datos históricos al usuario.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>45</td>
    <td>TS07</td>
    <td>Endpoint para obtener alertas activas</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint GET para obtener las alertas activas de una organización <strong>para</strong> que el frontend pueda mostrarlas dentro del panel de monitoreo.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>46</td>
    <td>TS08</td>
    <td>Endpoint para reconocer y cerrar incidencias</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint PUT para actualizar el estado de una incidencia y registrar su atención <strong>para</strong> que el frontend pueda reconocer alertas, documentar acciones correctivas y cerrar casos.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>47</td>
    <td>TS09</td>
    <td>Endpoint para generar bitácora diaria</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint GET para generar la bitácora diaria de monitoreo <strong>para</strong> que el frontend pueda consultar y descargar el consolidado operativo del día.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>48</td>
    <td>TS10</td>
    <td>Endpoint para exportar reporte de cumplimiento sanitario</td>
    <td><strong>Como</strong> developer, <strong>deseo</strong> un endpoint GET para exportar reportes de cumplimiento sanitario <strong>para</strong> que el frontend pueda solicitar evidencia documental lista para descarga o auditoría.</td>
    <td>5</td>
  </tr>
</table>
